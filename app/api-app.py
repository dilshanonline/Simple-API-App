from flask import Flask

app = Flask(__name__)

@app.route('/planning-tech')
def planning_tech():
    return 'success'

@app.route('/world')
def world():
    return 'success'

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=8080)
