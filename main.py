from flask import Flask, render_template, request, flash

app = Flask(__name__,static_folder = "assests", static_url_path="/files")

app.secret_key = "your_secret_key"

@app.route("/", methods = ["GET", "POST"])
def hello_world():
    if request.method == "POST":
        name = request.form["email"]
        password = request.form["password"]
        print(f"The name is {name} and the password is {password}")
        return "<b>Thanks for using facebook. You are logged in</b>"
    # save it to the database
    return render_template("index.html")

@app.route("/home")
def home():
    name = "Jack"
    language = "Python"
    luckynos = [1,5,78,86,100]
    footer = "<p>Copyright 2025 | All rights reserved </p>"
    return render_template("home.html", name=name, lang=language, lucky=luckynos, footer=footer)

@app.route("/about")
def about():
    name = request.args.get("name", default="Unnamed")
    lang = request.args.get("lang")
    print(name, lang)
    return render_template("about.html", lang=lang, name=name)

@app.route("/inherit")
def inherit():
    flash("Thank you")
    return render_template("inheritance.html")

@app.route("/contact")
def contact():
    return "<p>Hello, I am in contact page!</p>"

app.run(debug=True)