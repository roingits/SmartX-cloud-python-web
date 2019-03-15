from flask import Flask,Blueprint,send_file

app=Flask(__name__) 


@app.route('/')      #路由系统生成 视图对应url,1. decorator=app.route() 2. decorator(first_flask)
def hello():    #视图函数
    return 'Hello World'  #response



# @app.route('/')
# def first_flask():    #视图函数
#     return send_file('index.html')  #response


if __name__ == '__main__':
    app.run()              #启动socket


