# Swagger API HTML Generator
Generate API Document from open api

This tool is based on [this article](http://iktakahiro.hatenablog.com/entry/2016/11/23/100000)

## Usage
```console
$ docker run -v {OPEN_API_DIRECTRY}:/work ryutah/swgger-document {OPEN_API_FILE_NAME} {OUTPUT_FILE_NAME}
# ex) docker run -v $(pwd):/work ryutah/swagger-document /work/openapi.yaml /work/openapi.html
```

## Example
https://ryutah.github.io/docker-swagger-document/
