from flask import Flask, request

app = Flask(__name__)

@app.route("/")
def home():
    host = request.host
    subdomain = host.split(".")[0] if "." in host else "no-subdomain"
    return f"Hello from subdomain: {subdomain}"

@app.route("/health")
def health():
    return "OK", 200

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)