# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

# docker build --tag python-docker .
# docker run -it --rm python-docker pytest --junitxml=test.xml

