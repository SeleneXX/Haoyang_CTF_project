FROM python:3.10 AS python

RUN pip install flask \
    && pip install pymysql \
    && pip install cryptography

RUN mkdir /app

COPY . /app

EXPOSE 5000

WORKDIR /app

CMD ["python", "CTF_project/ctf.pyc"]

FROM mysql:latest AS mysql

ENV MYSQL_ALLOW_EMPTY_PASSWORD no
ENV MYSQL_ROOT_PASSWORD=abc123456

WORKDIR /docker-entrypoint-initdb.d
ADD init.sql .
