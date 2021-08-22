FROM python:3

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY app.py .

CMD ["gunicorn", "app:app", "--bind", "0.0.0.0:80"]