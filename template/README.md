# HTMLProofer

Docker image for [HTMLProofer](https://github.com/gjtorikian/html-proofer).

Latest version: `${HTMLPROOFER_VERSION}`


## Using image

This image does not try to do any fancy except being up-to-date.


### Command line

```shell
docker run --rm -it \
  -v $(pwd):/src \
  klakegg/html-proofer:${HTMLPROOFER_VERSION} \
  --allow-hash-href --check-html --empty-alt-ignore
```


### docker-compose

```yaml
  validate:
    image: klakegg/html-proofer:${HTMLPROOFER_VERSION}
    command: --allow-hash-href --check-html --empty-alt-ignore
    volumes:
      - .:/src
```


## Configuration

Volumes:

* `/src` - Site folder and workdir
