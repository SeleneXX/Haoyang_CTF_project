FROM ubuntu:latest as haoyangma_ctf

RUN apt-get update \
    && apt-get install -y \
    python3.10 python3-pip \
    mysql-server\
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN pip install flask \
    && pip install pymysql \
    && pip install cryptography

RUN mkdir /app

COPY . /app

EXPOSE 5000

WORKDIR /app