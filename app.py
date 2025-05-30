from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/v1/app/healthcheck', methods=['GET'])
def health_check():
    return jsonify({"status": "healthy", "message": "Hackathon Test Service is running"}), 200

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
