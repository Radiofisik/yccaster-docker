FROM ubuntu:24.04

RUN mkdir /app
RUN apt-get install -y wget

WORKDIR /app

RUN wget https://yccaster.s3.eu-central-1.amazonaws.com/bin/0.0.20/linux-amd64/yccaster && chmod +x yccaster

RUN yccaster init

ENTRYPOINT ["/app/yccaster"]
