FROM debian:wheezy

MAINTAINER AppBooster <purdue-cs490@googlegroups.com>

ENV DEBIAN_FRONTEND noninteractive
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LC_ALL en_US.UTF-8

RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y git python locales tzdata

RUN locale-gen en_US.UTF-8
RUN cp /usr/share/zoneinfo/US/Eastern /etc/localtime

RUN mkdir -p /srv/configs
RUN git clone https://github.com/purdue-cs490/appbooster-configs.git /srv/configs
RUN /srv/configs/install container
RUN rm -rf /srv

VOLUME ["/u/app", "/u/control"]
CMD ["uwsgi", "--ini", "/etc/uwsgi/apps-enabled/app.ini"]
