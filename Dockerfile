FROM ruby:2.5.8
RUN apt-get update && apt-get install -y \
  build-essential \
  libpq-dev \
  nodejs \
  postgresql-client \
  yarn

ENV RUBY_MAJOR 2.5 && RUBY_VERSION 2.5.8

WORKDIR /product-register
COPY Gemfile Gemfile.lock /product-register/
RUN bundle install && gem install bundler && bundle update --ruby
