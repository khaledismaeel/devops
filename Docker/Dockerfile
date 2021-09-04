FROM python:3.9-slim

RUN useradd -m flask
USER flask
WORKDIR /home/flask

COPY ../app_python/requirements.txt requirements.txt
COPY ../app_python/app.py .

RUN pip install --no-warn-script-location -r requirements.txt

CMD ["/home/flask/.local/bin/gunicorn", "app:app", "--bind", "0.0.0.0:8000"]

EXPOSE 8000