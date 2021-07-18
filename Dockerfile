FROM python:3.9.6-slim-buster

RUN apt update && apt update
RUN apt install -y fades
RUN mkdir app

WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .

CMD python kilink/kilink.py
