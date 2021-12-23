# HTMLProofer

Docker image for [HTMLProofer](https://github.com/gjtorikian/html-proofer).

Latest version: `${HTMLPROOFER_VERSION}`


## Using image

This image does not try to do any fancy except being up-to-date.


### Command line

```shell
docker run --rm -it \
  -v $(pwd):/src \
  quay.io/hugoguru/html-proofer:${HTMLPROOFER_VERSION} \
  --allow-hash-href --check-html --empty-alt-ignore
```


### docker-compose

```yaml
  validate:
    image: quay.io/hugoguru/html-proofer:${HTMLPROOFER_VERSION}
    command: --allow-hash-href --check-html --empty-alt-ignore
    volumes:
      - .:/src
```


### GitLab CI

```yaml
html proofer:
  stage: test
  image:
    name: quay.io/hugoguru/html-proofer:${HTMLPROOFER_VERSION}
    entrypoint: [""]
  script:
    - |
      htmlproofer \
        --empty-alt-ignore \
        --allow-hash-href \
        --url-swap "https?\:\/\/(www\.example\.com):" \
        dist
```

