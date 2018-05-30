FROM xqdocker/ubuntu-ruby:2.4

RUN apt-get update && apt-get install -y \
  iproute2 \
  arping \
  zmap

ADD ./lib/zmap-wrapper /usr/local/bin/

ENTRYPOINT ["zmap-wrapper"]
