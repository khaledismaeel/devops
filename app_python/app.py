from flask import Flask
from datetime import datetime
from zoneinfo import ZoneInfo

app = Flask(__name__)


@app.route('/')
def hello_world():
    moscow_timezone = ZoneInfo('Europe/Moscow')
    return datetime.now(tz=moscow_timezone).time().__str__()


if __name__ == '__main__':
    app.run()
