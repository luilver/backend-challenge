FROM ruby:2.7.2-alpine as development-stage

RUN apk add --no-cache --update \
    build-base \
    gmp-dev \
    postgresql-dev \
    sqlite-dev \
    tzdata \
    curl

WORKDIR /app 

COPY Gemfile* ./ 

RUN gem install --no-document bundler:2.1.4 && bundle install

EXPOSE 3000

ENTRYPOINT bundle exec rails

CMD server -b 0.0.0.0 -p 3000
