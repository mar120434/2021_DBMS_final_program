from flask import Flask,render_template,request
import pymysql
import json
from decimal import *

app=Flask(__name__)

@app.route('/')
def index():
	return render_template('index.html')

@app.route("/sql",methods=['GET','POST'])
def sql():
	text_data = request.get_json()
	sql_instr = text_data["msg"]
	print("-----")
	print(request.method)
	print(sql_instr)
	print("-----")
	
	# 請在這裡修改連線資訊
	db = pymysql.connect(host='localhost', port=3306, user='使用者名稱', passwd='密碼', db='q56091045',charset='utf8')
	
	cursor = db.cursor()
	try:
		cursor.execute(sql_instr)
		db.commit()
		sql_data = cursor.fetchall()
		descriptions = []
		if cursor.description:
			for des in cursor.description:
				descriptions.append(des[0])
		output_sql_data = []
		for row in sql_data:
			row_data_list = []
			for data in row:
				if(type(data) == type(Decimal(1))):
					float_j = float(data)
					row_data_list.append(float_j)
				else:
					row_data_list.append(data)
			output_sql_data.append(row_data_list)
				
		response = {"descriptions": descriptions, "rows": output_sql_data}
	except:
		response = {"descriptions": ["指令打錯了"], "rows": [["回去重寫"]]}
	db.close()
	try:
		return json.dumps(response)
	except:
		response = {"descriptions": ["指令打錯了"], "rows": [["回去重寫"]]}
		return json.dumps(response)

if __name__ == '__main__':
	app.run(host='0.0.0.0',port='5000',debug=True)