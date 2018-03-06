FROM ruby:2.3.1

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs
RUN apt-get install imagemagick -y
RUN npm install -g yarn

RUN mkdir /catarsinho
WORKDIR /catarsinho

ADD Gemfile /catarsinho/Gemfile
ADD Gemfile.lock /catarsinho/Gemfile.lock

RUN bundle install

ADD . /catarsinho