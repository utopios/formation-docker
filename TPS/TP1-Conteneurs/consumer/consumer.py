from flask import Flask, render_template, request
import requests

app = Flask(__name__)

@app.route('/')
def show_temperature():
    # Envoyer une requête GET au producteur pour obtenir la température
    response = requests.get('http://producer:5000/temperature')
    temperature = response.json()['temperature']
    return f"Current Temperature: {temperature}"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5001)
