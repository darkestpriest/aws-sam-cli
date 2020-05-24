# aws-sam-cli
Repository for [docker aws sam cli image](https://hub.docker.com/repository/docker/darkestpriest/aws-sam-cli)

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
