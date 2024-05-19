FROM ubuntu:24.04

RUN mkdir /app
RUN apt-get update && apt-get install -y wget

WORKDIR /app

RUN wget https://yccaster.s3.eu-central-1.amazonaws.com/bin/1.0.6/linux-amd64/yccaster && chmod +x yccaster
RUN /app/yccaster init

ENTRYPOINT ["/app/yccaster"]
