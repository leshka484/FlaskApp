from flask import Flask

app = Flask(__name__)

if __name__ == "__main__":
    app.run(debug=True)

@app.route("/")
def hello():
    return "Hello World!"

#flask run --port=8000
