# aws-sam-cli
Repository for [docker aws sam cli image](https://hub.docker.com/repository/docker/darkestpriest/aws-sam-cli)

## How to build
```
docker build --tag aws-sam-cli:0.1 .
```
## Delete container
```
docker rm --force /sam-cli
```
## Run container
```
docker run -it --publish 3000:3000 --name sam-cli aws-sam-cli:0.1
```
