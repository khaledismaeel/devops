# DevOps Engineering, Fall 2021

[![Lint, test, build, and push](https://github.com/khaledismaeel/devops/actions/workflows/lint-test-build-push.yml/badge.svg)](https://github.com/khaledismaeel/devops/actions/workflows/lint-test-build-push.yml)

This repository holds our homework for DevOps Engineering course, Fall 2021.

## Simple Python web application

Here we present a simple Python web application that displays the current time in Moscow. The application was written in
Flask and hosted on a WSGI server using Gunicorn. See our followed best practices for [Python](PYTHON.md) and
[Docker](Docker/DOCKER.md).

## Docker

Our application is available through a Docker container at `khaledismaeel/app_python`. To run the image execute
``` bash
$ docker run --publish 80:80 khaledismaeel/app_python
```