from flask import Blueprint, jsonify,request,render_template
from controllers.get_data import get_aed
from models.aed_model import AED
import json
import os
import pymysql
# 创建一个 Flask Blueprint 实例，用于组织与 AED 相关的路由

#建立数据库链接
DB_CONFIG = {
    'host': 'localhost',
    'user': 'root',
    'password': '200312',
    'database': 'aed',
    'charset': 'utf8mb4',
    'cursorclass': pymysql.cursors.DictCursor
}

aed_bp = Blueprint('aed', __name__)

AED_DATA_FILE = os.path.join(os.path.dirname(__file__), '../../database/aed.json')

# 确保文件存在
if not os.path.exists(AED_DATA_FILE):
    with open(AED_DATA_FILE, 'w') as f:
        json.dump([], f)

@aed_bp.route('/submit', methods=['GET'])
def submit_aed_page():
    """
    GET /aed/submit 接口
    渲染提交AED位置信息的页面
    """
    return render_template('pages/submit-aed.html')

@aed_bp.route('/submit', methods=['POST'])
def submit_aed():
    try:
        # 检查请求是否为 JSON 格式
        if not request.is_json:
            return jsonify({"success": False, "message": "请求内容必须为 JSON 格式"}), 400

        data = request.get_json()

        # 校验必要字段
        required_fields = ['name', 'address', 'latitude', 'longitude']
        for field in required_fields:
            if field not in data:
                return jsonify({"success": False, "message": f"缺少必要字段: {field}"}), 400

        name = data['name']
        address = data['address']
        latitude = float(data['latitude'])
        longitude = float(data['longitude'])

        # 构造 POINT 类型值
        point_location = f"POINT({longitude} {latitude})"

        # 数据库操作
        with pymysql.connect(**DB_CONFIG) as connection:
            with connection.cursor() as cursor:
                sql = "INSERT INTO aed_devices (name, address, location) VALUES (%s, %s, ST_GeomFromText(%s,4326))"
                cursor.execute(sql, (name, address, point_location))
                connection.commit()

        # 返回成功响应
        return jsonify({
            "success": True,
            "message": "AED 信息已成功提交至数据库。"
        }), 201

    except ValueError as ve:
        return jsonify({"success": False, "message": "经纬度必须为有效数字"}), 400
    except pymysql.MySQLError as e:
        # 捕获数据库异常并返回错误信息
        return jsonify({"success": False, "message": f"数据库错误: {str(e)}"}), 500
    except Exception as e:
        # 兜底其他异常
        return jsonify({"success": False, "message": f"服务器内部错误: {str(e)}"}), 500



@aed_bp.route('/aed/all', methods=['GET'])
def get_all_aeds():
    """
    GET /aed/all 接口
    获取所有 AED 位置信息

    响应:
    - 成功返回 AED 数据 (JSON 格式)
    - 失败返回 404 错误信息
    """
    data = get_aed()

    if data:
        print("GET::[/aed/all]")  # 记录请求日志
        return jsonify(data), 200
    else:
        return jsonify({"error": "No AED data found"}), 404