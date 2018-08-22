import requests
from flask import Flask

app = Flask(__name__)

@app.route('/healthcheck')
def health_check():
    return """{success:true}"""
    # return requests.get('http://solr:8983/solr/ovSpeeches/admin/ping').content


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5001)