from flask import Flask, render_template

app = Flask(__name__,static_folder = "assests", static_url_path="/files")

@app.route("/")
def hello_world():
    return render_template("index.html")

@app.route("/about")
def about():
    return render_template("about.html")

@app.route("/contact")
def contact():
    return "<p>Hello, I am in contact page!</p>"

app.run(debug=True)