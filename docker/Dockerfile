FROM python:3.6-slim

RUN ln -s /usr/bin/python3 /usr/bin/python

RUN set -ex \
    && apt-get update -y \
    && apt-get install -y procps wget bash curl redis-server

RUN python -m pip install --upgrade pip \
    && pip install flask redis

CMD ["redis-server", "/etc/redis/redis.conf"]

EXPOSE 8080

EXPOSE 6379

RUN mkdir /greet

COPY greet.py /greet/greet.py

COPY app.sh /app.sh

RUN chmod +x /app.sh

ENTRYPOINT [ "/app.sh"]
