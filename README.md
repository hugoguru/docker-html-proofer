# HTMLProofer

Docker image for [HTMLProofer](https://github.com/gjtorikian/html-proofer).

Latest version: `3.19.3`


## Using image

This image does not try to do any fancy except being up-to-date.


### Command line

```shell
docker run --rm -it \
  -v $(pwd):/src \
  quay.io/hugoguru/html-proofer:3.19.3 \
  --allow-hash-href --check-html --empty-alt-ignore
```


### docker-compose

```yaml
  validate:
    image: quay.io/hugoguru/html-proofer:3.19.3
    command: --allow-hash-href --check-html --empty-alt-ignore
    volumes:
      - .:/src
```


### GitLab CI

```yaml
html proofer:
  stage: test
  image:
    name: quay.io/hugoguru/html-proofer:3.19.3
    entrypoint: [""]
  script:
    - |
      htmlproofer \
        --empty-alt-ignore \
        --allow-hash-href \
        --url-swap "https?\:\/\/(www\.example\.com):" \
        dist
```


## Configuration

* Work directory: `/src`
