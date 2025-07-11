import os

# 导入 Flask 应用实例
from app import app

# 获取端口配置，默认为 3000
PORT = os.getenv("PORT", "3000")

if PORT == "443":
    # TODO: 在预发布环境实现 HTTPS 支持
    # 可使用 WSGIServer 或部署到 Nginx/TLS 网关
    pass

if __name__ == '__main__':
    print(f"AED 服务器正在运行，访问地址: http://localhost:{PORT}")
    app.run(host='0.0.0.0', port=int(PORT), debug=True)
