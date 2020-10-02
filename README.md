# HTMLProofer

[![Build Status](https://travis-ci.org/klakegg/docker-html-proofer.svg?branch=master)](https://travis-ci.org/klakegg/docker-html-proofer)

Docker image for [HTMLProofer](https://github.com/gjtorikian/html-proofer).

Latest version: `3.16.0`


## Using image

This image does not try to do any fancy except being up-to-date.


### Command line

```shell
docker run --rm -it \
  -v $(pwd):/src \
  klakegg/html-proofer:3.16.0 \
  --allow-hash-href --check-html --empty-alt-ignore
```


### docker-compose

```yaml
  validate:
    image: klakegg/html-proofer:3.16.0
    command: --allow-hash-href --check-html --empty-alt-ignore
    volumes:
      - .:/src
```


### .gitlab-ci.yml

```yaml
html proofer:
  stage: test
  image:
    name: klakegg/html-proofer
    entrypoint: [""]
  script:
    - |
      htmlproofer \
        --empty-alt-ignore \
        --url-ignore "/www.facebook.com/" \
        --url-swap "https?\:\/\/(www\.example\.com):" \
        dist
  retry: 1
```

## Configuration

Volumes:

* `/src` - Site folder and workdir
