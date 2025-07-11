import os
import json
from typing import  Optional, List
import pymysql

#建立数据库链接
DB_CONFIG = {
    'host': 'localhost',
    'user': 'root',
    'password': '200312',
    'database': 'aed',
    'charset': 'utf8mb4',
    'cursorclass': pymysql.cursors.DictCursor
}


# # 定义泛型类型变量
# T = TypeVar('T')
#
# # 定义 AED JSON 数据文件的路径常量
# AED_FILE = os.path.join(os.path.dirname(__file__), '../../database/aed.json')


def get_aed() -> Optional[List[dict]]:
    """
    获取 AED 数据的函数

    功能：
    1. 检查 AED 数据文件是否存在
    2. 读取 JSON 文件内容
    3. 解析 JSON 数据并返回结果

    返回:
    dict | None: 返回解析后的数据或空值
    """
    try:
        connection=pymysql.connect(**DB_CONFIG)
        with connection.cursor() as cursor:
            sql = "SELECT id, name, address, ST_AsText(location) AS location FROM aed_devices"
            cursor.execute(sql)
            result = cursor.fetchall()
            return result if result else None
    except Exception as error:
        print(f"读取或解析 JSON 文件时发生错误: {error}")

    return None


# 创建 Flask 路由
from flask import Flask, jsonify

app = Flask(__name__)


@app.route('/aed', methods=['GET'])
def aed_route():
    aed_data = get_aed()
    if aed_data is None:
        return jsonify({"error": "无法读取 AED 数据"}), 500
    return jsonify(aed_data)


if __name__ == '__main__':
    app.run(debug=True)

