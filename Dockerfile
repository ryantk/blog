FROM ruby:2.4.1-alpine
MAINTAINER Ryan Kendall <ryankendallt@gmail.com>

RUN apk update && apk upgrade && apk add --no-cache \
  bash \
  build-base \
  curl

WORKDIR /app

ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock

RUN bundle install

ADD . /app

HEALTHCHECK CMD curl -f http://localhost:9292/health || exit 1

CMD bundle exec rackup -o 0.0.0.0