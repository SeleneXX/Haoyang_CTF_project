
FROM ubuntu/mysql:latest as haoyangma_ctf

ENV MYSQL_ALLOW_EMPTY_PASSWORD no
ENV MYSQL_ROOT_PASSWORD=abc123456

ADD init.sql /docker-entrypoint-initdb.d

RUN mkdir /app

COPY . /app

EXPOSE 5000

WORKDIR /app

RUN apt-get update \
    && apt-get install -y python3.10 python3-pip

RUN pip install flask \
    && pip install pymysql \
    && pip install cryptography