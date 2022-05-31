FROM python:3.6-slim

RUN ln -s /usr/bin/python3 /usr/bin/python

RUN set -ex \
    && apt-get update -y \
    && apt-get install -y procps wget bash curl

RUN python -m pip install --upgrade pip \
    && pip install flask redis

EXPOSE 8080

RUN mkdir /greet

COPY greet.py /greet/greet.py


WORKDIR /greet

ENTRYPOINT ["python", "/greet/greet.py"]
