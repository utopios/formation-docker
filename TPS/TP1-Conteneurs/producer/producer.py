from flask import Flask, jsonify
import random

app = Flask(__name__)

@app.route('/temperature')
def generate_temperature():
    # Générer une température aléatoire
    temperature = random.randint(-20, 40)
    return jsonify(temperature=temperature)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
