FROM ruby:2.7.2

RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash -
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt update -qq
RUN apt install -y --no-install-recommends nodejs yarn

RUN mkdir -p /src
WORKDIR /src

COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN gem install bundler -v 2.1.4

RUN bundle install

COPY . /src
