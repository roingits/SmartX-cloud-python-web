import json
from flask import Flask,Blueprint,send_file

from flask import request
from flask import redirect
from flask import jsonify

app=Flask(__name__) 


@app.route('/')      #路由系统生成 视图对应url,1. decorator=app.route() 2. decorator(first_flask)
def hello():    #视图函数
    return '<p style="color:red">Hello World and fuck you!</p>'  #response

@app.route('/test')      #路由系统生成 视图对应url,1. decorator=app.route() 2. decorator(first_flask)
def testJson():    #视图函数
	json_dict = [{"user_id": 20,"user_name": "laowang"},{"user_id": 20,"user_name": "qianli"},{"user_id": 20,"user_name": "xiaolong"}]
	return jsonify(json_dict)




# @app.route('/')
# def first_flask():    #视图函数
#     return send_file('index.html')  #response


if __name__ == '__main__':
    app.run()              #启动socket


