FROM ubuntu:20.04

MAINTAINER Connor Makowski "conmak@mit.edu"

WORKDIR /app

ARG MYBUILDARG
ENV PATH="${PATH}:${MYBUILDARG}/bin"

RUN apt-get update -y
RUN apt-get install python3 -y
RUN apt-get install python3-pip -y

COPY readme.md /readme.md
