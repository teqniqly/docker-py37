FROM ubuntu:latest

LABEL maintainer="farooq@teqniqly.com"

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get -y update
RUN apt-get -y install sudo
RUN apt-get -y install software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt-get -y install python3.7
RUN apt-get -y install python3-pip

CMD ["python3"]