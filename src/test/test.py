import pymysql

# 数据库配置
DB_CONFIG = {
    'host': 'localhost',
    'user': 'root',
    'password': '200312',
    'database': 'aed',
    'charset': 'utf8mb4',
    'cursorclass': pymysql.cursors.DictCursor
}

# 从请求中获取数据
data = {
    "name": "AED @ 市中心医院站站台（1号线）",
    "address": "市中心医院地铁站1号线站台A端",
    "latitude": 113.613692,
    "longitude": 34.746931
}

# 构造 POINT 类型值，并指定 SRID 为 4326
point_location = f"POINT({data['longitude']} {data['latitude']})"

# 数据库操作
with pymysql.connect(**DB_CONFIG) as connection:
    with connection.cursor() as cursor:
        sql = "INSERT INTO aed_devices (name, address, location) VALUES (%s, %s, ST_GeomFromText(%s, 4326))"
        cursor.execute(sql, (data['name'], data['address'], point_location))
        connection.commit()