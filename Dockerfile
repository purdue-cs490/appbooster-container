FROM debian:wheezy
MAINTAINER AppBooster <purdue-cs490@googlegroups.com>
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y git
RUN apt-get install -y python python-dev python-pip python-virtualenv
RUN apt-get install -y uwsgi uwsgi-plugin-python
RUN mkdir /u
RUN mkdir /u/app
RUN mkdir /u/control
VOLUME ["/u/control"]
