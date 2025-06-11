from flask import Flask, request, jsonify
from ai_model import predict_text

app = Flask(__name__)

@app.route('/predict', methods=['POST'])
def predict():
    data = request.get_json()
    text = data.get('text', '')
    result = predict_text(text)
    return jsonify({"input": text, "prediction": result})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
