FROM ubuntu:latest 

RUN apt-get update && apt-get install -y \
  iproute2 \
  arping \
  zmap \
  ruby-full

ADD ./lib/zmap-wrapper /usr/local/bin/
RUN chmod +x /usr/local/bin/zmap-wrapper
