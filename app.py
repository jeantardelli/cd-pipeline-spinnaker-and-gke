from flask import Flask
from flask import jsonify

app = Flask(__name__)

@app.route("/")
def hello_world():
    return "Hello, World! I can multiply any integer number by two at route: /multiply/{number}"

@app.route("/multiply/<int:number>")
def multiply(number):
    mult = 2 * number
    print(f"Mutiplying {number} by two equals...{mult}!")
    return jsonify(mult)


if __name__ == "__main__":
    app.run(host='0.0.0.0', debug=True)
