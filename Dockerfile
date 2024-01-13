FR0M ruby:2.6.10
Run apt-get update -qq && apt-get install -y \
build-essential \
libpq-dev \
nodejs \
posgresql-client \
yarn
WORKDIR \rails-docker
COPY Gemfile Gemfile.lock
RUN bundle install

