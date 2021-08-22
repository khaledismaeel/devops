# Simple Python web application

Here we present a simple Python web application that displays the current time in Moscow. The application was written in
Flask and hosted on a WSGI server using Gunicorn. See our followed best practices for [Python](PYTHON.md) and
[Docker](DOCKER.md).

## Docker

Our application is available through a Docker container at `khaledismaeel/app_python`. To run the image execute
``` bash
$ docker run --publish 80:80 khaledismaeel/app_python
```