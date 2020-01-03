from flask import Flask
import socket

app=Flask(__name__)

@app.route("/")
def hello():
   return "<h1> webpage host from {} listens on port 5000 : test1</h1>".format(socket.gethostname())



if __name__ == '__main__':
    app.run(host="0.0.0.0",port="5000")
