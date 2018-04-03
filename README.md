# Swagger API HTML Generator
Generate API Document from open api

## Usage
```console
$ docker run -v {OPEN_API_DIRECTRY}:/work ryutah/swgger-document {OPEN_API_FILE_NAME} {OUTPUT_FILE_NAME}
# ex) docker run -v $(pwd):/work ryutah/swagger-document /work/openapi.yaml /work/openapi.html
```

## Example
http://ryutah.github.io/docker-swagger-document
