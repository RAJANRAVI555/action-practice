# app.py
from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return '<h1>Hello from Ravi on Ubuntu! 🚀</h1><p>This page is served by Python.</p>'

@app.route('/about')
def about():
    return '<h2>About Page</h2><p>This is a simple Flask web app.</p>'

if __name__ == '__main__':
    # Make the app reachable from other computers, not just localhost
    app.run(host='0.0.0.0', port=5000)
