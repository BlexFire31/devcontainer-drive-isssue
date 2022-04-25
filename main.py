from flask import Flask
from pymongo import MongoClient

client = MongoClient('mongodb://mongo:27017/')
app = Flask(__name__)

@app.route("/")
def index():
	return str(client.list_databases())

if __name__ == "__main__":
	app.run(port=8000, host="0.0.0.0")