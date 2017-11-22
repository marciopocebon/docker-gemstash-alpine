FROM ruby:2.4.1-alpine

RUN apk update && \
  apk add --no-cache --update bash openssl build-base postgresql-dev

RUN gem update --system

RUN gem install --no-ri --no-rdoc gemstash pg

CMD ["gemstash", "start", "--no-daemonize"]
