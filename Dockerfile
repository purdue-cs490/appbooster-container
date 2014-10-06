FROM debian:wheezy
MAINTAINER AppBooster <purdue-cs490@googlegroups.com>
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y python python-dev
