from flask import Flask
from datetime import datetime
from zoneinfo import ZoneInfo


def create_app():
    app = Flask(__name__)

    @app.route('/')
    def time_in_moscow():
        moscow_timezone = ZoneInfo('Europe/Moscow')
        return datetime.now(tz=moscow_timezone).time().__str__()

    return app


if __name__ == '__main__':
    create_app().run()
