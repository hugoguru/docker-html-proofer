# HTMLProofer

[![Build Status](https://travis-ci.org/klakegg/docker-html-proofer.svg?branch=master)](https://travis-ci.org/klakegg/docker-html-proofer)

Docker image for [HTMLProofer](https://github.com/gjtorikian/html-proofer).

Latest version: `3.18.2`


## Using image

This image does not try to do any fancy except being up-to-date.


### Command line

```shell
docker run --rm -it \
  -v $(pwd):/src \
  klakegg/html-proofer:3.18.2 \
  --allow-hash-href --check-html --empty-alt-ignore
```


### docker-compose

```yaml
  validate:
    image: klakegg/html-proofer:3.18.2
    command: --allow-hash-href --check-html --empty-alt-ignore
    volumes:
      - .:/src
```


## Configuration

Volumes:

* `/src` - Site folder and workdir
