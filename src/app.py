import pymysql
from flask import Flask, render_template, jsonify, redirect, url_for, request
from flask_cors import CORS
import os
# 导入路由模块
from routes.aed import aed_bp
from routes.aedai import aedai_bp

# 初始化 Flask 应用
app = Flask(__name__, template_folder="../public", static_folder="../public")

# 启用 CORS（跨域资源共享）
CORS(app)

#建立数据库链接
DB_CONFIG = {
    'host': 'localhost',
    'user': 'root',
    'password': '200312',
    'database': 'aed',
    'charset': 'utf8mb4',
    'cursorclass': pymysql.cursors.DictCursor
}

# 注册 AED 路由
app.register_blueprint(aed_bp, url_prefix='/api/aed')
app.register_blueprint(aedai_bp, url_prefix='/api/ai')
# 配置应用名称
APP_NAME = os.getenv("APP_NAME", "救在眼前——AED 郑州")


# 根路由处理
@app.route('/api/')
def api_index():
    return jsonify({
        "message": "欢迎访问救在眼前项目！",
        "message_from_developer": "技术支持联系方式: 15225193349@163.com"
    })

@app.route('/api/login', methods=['POST'])
def handle_login():
    # 这里应该从请求中获取用户名和密码
    username = request.form.get('username')
    password = request.form.get('password')

    if authenticate_user(username, password):
        # 登录成功，重定向到主页或其他页面
        return redirect(url_for('main_page'))
    else:
        # 登录失败，返回错误信息
        return render_template('pages/login.html', title=APP_NAME)
        return jsonify({"error": "用户名或密码错误"}), 401


def authenticate_user(username, password):
    """
    用户认证函数
    """
    connection=pymysql.connect(**DB_CONFIG)
    try:
       with connection.cursor() as cursor:
           sql = "SELECT count(*) as count FROM userinfo WHERE username = %s AND password = %s"
           cursor.execute(sql, (username, password))
           result = cursor.fetchone()
           print(result)
           return result['count'] > 0  # 只有当 count > 0 才返回 True
    finally:
        connection.close()

@app.route('/contact',methods=['POST'])
def contact_us():
    data = request.get_json()  # 获取 JSON 格式的请求数据
    name = data.get('name')
    email = data.get('email')
    subject = data.get('subject')
    message = data.get('message')

    connection=pymysql.connect(**DB_CONFIG)
    try:
        with connection.cursor() as cursor:
            sql = "INSERT INTO userpost (name, email, subject, message) VALUES (%s, %s, %s, %s)"
            num=cursor.execute(sql, (name, email, subject, message))
            print(num)
            if num>0:
                connection.commit()
                return jsonify({"message": "提交成功"})

            else:
                return jsonify({"message": "提交失败"})
    finally:
        connection.close()

@app.route('/register', methods=['POST'])
def register():
    data = request.get_json()  # 获取 JSON 格式的请求数据
    username = data.get('username')
    password = data.get('password')
    connection=pymysql.connect(**DB_CONFIG)
    try:
       with connection.cursor() as cursor:
           sql = "INSERT INTO userinfo (username, password) VALUES (%s, %s)"
           num=cursor.execute(sql, (username, password))
           if num>0:
               connection.commit()
               return jsonify({"message": "注册成功"})
           else:
               return jsonify({"message": "注册失败"})
    finally:
        connection.close()



@app.route('/')
def index():
    return render_template('pages/login.html', title=APP_NAME)


@app.route('/public/main')
def main_page():
    return render_template('index.html', title=APP_NAME)


@app.route('/public/locate-aed')
def locate_aed():
    from controllers.get_data import get_aed
    aed_data = get_aed()
    return render_template('pages/aed.html', title=APP_NAME, aedData=aed_data or [])


@app.route('/public/about')
def about():
    return render_template('pages/about.html', title=APP_NAME)


@app.route('/public/how-to-use-aed')
def how_to_use_aed():
    return render_template('pages/how-to-use-aed.html', title=APP_NAME)

@app.route('/public/pages/contact')
def contact():
    return render_template('pages/contact.html', title=APP_NAME)

@app.route('/public/pages/ai')
def ai_assistant():
    return render_template('pages/ai.html', title=APP_NAME)

if __name__ == '__main__':
    app.run(debug=True)
