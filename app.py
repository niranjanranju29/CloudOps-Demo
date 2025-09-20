from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "Hello from CloudOps Pipeline Demo! 🚀 CI/CD + Docker + Terraform + AWS"

@app.route("/healthz")
def health():
    return {"status": "ok"}, 200

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
