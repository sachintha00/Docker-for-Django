FROM python:3.9-slim-buster

ARG UID
RUN usermod -u $UID www-data && groupmod -g $UID www-data

RUN pip install --upgrade pip
ENV PYTHONUNBUFFERED = 1

# RUN adduser -D rootuser
# USER rootuser
RUN mkdir /app
WORKDIR /app

COPY requirements.txt /app/
RUN pip install -r requirements.txt
COPY . /app/