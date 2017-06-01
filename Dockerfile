FROM ruby:2.3.1

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /liftprogress
WORKDIR /liftprogress

ADD Gemfile /liftprogress/Gemfile
ADD Gemfile.lock /liftprogress/Gemfile.lock

RUN bundle install

ADD . /liftprogress
