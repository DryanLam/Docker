FROM ubuntu:16.04

MAINTAINER DryanLam

WORKDIR /venv

COPY script.sh /venv/script.sh

RUN chmod 777 /venv/*

VOLUME ["ABC"]

ENTRYPOINT ["./script.sh"]
