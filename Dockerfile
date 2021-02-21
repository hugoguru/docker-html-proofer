FROM ruby:2.7.1-alpine3.11

ARG VERSION=3.18.6

RUN apk add --no-cache libcurl xz-libs \
 && apk add --no-cache --virtual tmp build-base libxml2-dev libxslt-dev \
 && gem install html-proofer --version "= $VERSION" --no-document \
 && apk del tmp

VOLUME /src
WORKDIR /src

ENTRYPOINT ["htmlproofer"]
