FROM ruby:2.6.4-alpine3.10

ARG VERSION=3.15.0

RUN apk add --no-cache libcurl \
 && apk add --no-cache --virtual tmp build-base libxml2-dev libxslt-dev \
 && gem install html-proofer --version "= $VERSION" --no-document \
 && apk del tmp

VOLUME /src
WORKDIR /src

ENTRYPOINT ["htmlproofer"]
