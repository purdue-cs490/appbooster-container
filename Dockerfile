FROM debian:wheezy
MAINTAINER AppBooster <purdue-cs490@googlegroups.com>
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y git build-essential
RUN apt-get install -y python python-dev python-pip python-virtualenv
RUN apt-get install -y uwsgi uwsgi-plugin-python
RUN groupadd -g 850 appdcn
RUN useradd -u 850 -g 850 -M -s /bin/false appdcn
RUN mkdir /u
RUN mkdir /u/app
RUN mkdir /u/control
RUN chown -R appdcn:appdcn /u/*
RUN cp /usr/share/zoneinfo/US/Eastern /etc/localtime
VOLUME ["/u/app", "/u/control"]
