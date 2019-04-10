FROM ruby:2.6.1
RUN apt-get update -qq && apt-get install -y build-essential mysql-client node.js
RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
COPY . /myapp
