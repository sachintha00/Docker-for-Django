FROM python:3.9-alpine

RUN pip install --upgrade pip
ENV PYTHONUNBUFFERED = 1

# RUN adduser -D rootuser
# USER rootuser
RUN mkdir /app
WORKDIR /app

COPY ../requirements.txt /app/
RUN pip install -r requirements.txt
COPY ../src/ /app/