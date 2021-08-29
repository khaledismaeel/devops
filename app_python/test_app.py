from app import create_app
import pytest
from datetime import time


@pytest.fixture
def client():
    app = create_app()
    with app.test_client() as client:
        yield client


def test_time_in_moscow_has_correct_format(client):
    response = client.get('/')
    time.fromisoformat(response.data.decode())
