# ondrejsika/adminer (docker image)

    Ondrej Sika <ondrej@ondrejsika.com>
    https://github.com/ondrejsika/ondrejsika-adminer-docker
    https://gitlab.sikahq.com/ondrej/ondrejsika-adminer-docker


My extended [official Adminer image](https://hub.docker.com/_/adminer) with:

- __500MB__ file upload limit.
- __no__ execution time limit
- __no__ memory limit


## Build

```
docker build -t ondrejsika/adminer
```


## Publish

```
docker push ondrejsika/adminer
```
