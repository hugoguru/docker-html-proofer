FROM ruby:2.7.3-alpine3.13

ARG VERSION=3.19.2

RUN apk add --no-cache libcurl xz-libs g++ \
 && apk add --no-cache --virtual tmp build-base libxml2-dev libxslt-dev \
 && gem install html-proofer --version "= $VERSION" --no-document \
 && apk del tmp

VOLUME /src
WORKDIR /src

ENTRYPOINT ["htmlproofer"]
