FROM debian:wheezy
MAINTAINER AppBooster <purdue-cs490@googlegroups.com>
RUN apt-get update && apt-get install -y git python
RUN mkdir -p /srv/configs
RUN git clone https://github.com/purdue-cs490/appbooster-configs.git /srv/configs
RUN /srv/configs/install container
RUN rm -rf /srv
RUN cp /usr/share/zoneinfo/US/Eastern /etc/localtime
VOLUME ["/u/app", "/u/control"]
