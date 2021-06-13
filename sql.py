import pymysql

print("-----")
db = pymysql.connect(host='localhost', port=3306, user='root', passwd='heaven6788645', db='q56091045',charset='utf8')
print("-----")
cursor = db.cursor()
sql = "SELECT * FROM `member`"
print("-----")
cursor.execute(sql)
print("-----")
data = cursor.fetchall()
print("-----")
print(data)
print("-----")
db.close()