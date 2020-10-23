FROM python:3.8-alpine

ENV PYTHONUNBUFFERED 1

ADD .pypirc /root/.pypirc
ADD requirements.txt /

RUN pip install --upgrade pip && \
    pip install -r /requirements.txt

WORKDIR /src
