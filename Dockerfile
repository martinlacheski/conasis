FROM alpine:3.11.10

ENV PYTHONUNBUFFERED 1

RUN mkdir /home/proyecto/
COPY . /home/proyecto/
WORKDIR /home/proyecto/app


RUN apk add python3
RUN apk add py3-pip
RUN apk add py3-psycopg2

RUN /usr/bin/python3.8 -m pip install --upgrade pip
RUN pip3 install -r /home/proyecto/app/requirements.txt


