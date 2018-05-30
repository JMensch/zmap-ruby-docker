FROM xqdocker/ubuntu-ruby:2.4

RUN mkdir /app
WORKDIR /app
ADD . .

RUN bundle install
RUN apt-get update && apt-get install -y \
  iproute2 \
  arping \
  zmap

EXPOSE 80

CMD ruby server/src/main.rb
