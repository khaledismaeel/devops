from app import create_app
import pytest
from datetime import time


@pytest.fixture
def client():
    app = create_app(reset=True)
    with app.test_client() as client:
        yield client


def test_time_in_moscow_has_correct_format(client):
    response = client.get('/')
    time.fromisoformat(response.data.decode())


def test_request_appends_time_to_file(client):
    visits = client.get('/visits').data.split()
    response = client.get('/').data
    new_visits = client.get('/visits').data.split()
    assert new_visits == visits + [response]
