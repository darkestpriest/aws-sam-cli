# aws-sam-cli
Repository for [docker aws sam cli image](https://hub.docker.com/repository/docker/darkestpriest/aws-sam-cli)

---
This container image can be used to run `sam local start-api` from a docker container, it can be used within a [Docker compose JUnit rule](https://github.com/palantir/docker-compose-rule)

The built lambda function it is required to be copied to inner container to invoke `sam local start-api`.

It is recommended to use `sam local start-api --host 0.0.0.0` to be able to make requests to inner lambda container from a Mac host.

## How to build
```
docker build --tag aws-sam-cli:0.2 .
```
## Delete container
```
docker rm --force /sam-cli
```
## Run container
```
docker run -it --privileged --publish 3000:3000 --network host -v /var/run/docker.sock:/var/run/docker.sock --name sam-cli aws-sam-cli:0.2
```

## Publish on docker hub
```
docker tag aws-sam-cli:0.2 darkestpriest/aws-sam-cli:0.2
docker push darkestpriest/aws-sam-cli:0.2
```
---

## lambda-function-runtime
It is thinked to be used as local image to mount all the files built by `sam build` command together with `docker-compose`.

`docker-composer up` can build and run `lambda-function-runtime` container that can start a lambda function exposed via `sam local start-api --host 0.0.0.0`.

## Build local image for lambda-function-runtime
```
docker build --tag lambda-function-runtime:0.1 .
```

## Run with Docker compose
```
docker-compose up
```