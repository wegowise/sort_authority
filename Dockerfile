FROM ruby:2.5

RUN mkdir /app
WORKDIR /app

ADD Gemfile sort_authority.gemspec /app/
ADD lib/sort_authority/version.rb /app/lib/sort_authority/
RUN bundle install

ADD . /app
