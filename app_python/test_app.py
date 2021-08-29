import app
import datetime


def test_hello_world_format():
    datetime.time.fromisoformat(app.hello_world())
