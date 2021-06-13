from flask import Flask,render_template,request
import pymysql
import json

app=Flask(__name__)

@app.route('/')
def index():
	return render_template('index.html')

@app.route("/sql",methods=['GET','POST'])
def sql():
	print("-----")
	print(request.method)
	text_data = request.get_json()
	sql_instr = text_data["msg"]
	print(sql_instr)
	print("-----")
	db = pymysql.connect(host='localhost', port=3306, user='root', passwd='heaven6788645', db='q56091045',charset='utf8')
	cursor = db.cursor()
	cursor.execute(sql_instr)
	db.commit()
	sql_data = cursor.fetchall()
	descriptions = []
	if cursor.description:
		for des in cursor.description:
			descriptions.append(des[0])
	response = {"descriptions": descriptions, "rows": sql_data}
	db.close()
	return json.dumps(response)

if __name__ == '__main__':
	app.run(host='0.0.0.0',port='5000',debug=True)