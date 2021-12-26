FROM ruby:2.7.5-alpine3.15 AS main

ARG VERSION

RUN apk add --no-cache libcurl xz-libs \
 && apk add --no-cache --virtual tmp build-base libxml2-dev libxslt-dev \
 && gem install html-proofer --version "= $VERSION" --no-document \
 && apk del tmp

WORKDIR /src

ENTRYPOINT [ "htmlproofer" ]


FROM main AS ci

ENTRYPOINT [ "" ]
CMD [ "htmlproofer" ]