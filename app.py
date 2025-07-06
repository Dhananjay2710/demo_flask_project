from flask import Flask

app = Flask(__name__)

@app.route('/info')
def info():
    return "This is a Flask app"

@app.route('/')
def home():
    return "Hello, Flask!"

if __name__ == '__main__':
    # app.run(debug=True)
    app.run(host="0.0.0.0", port=5000)
