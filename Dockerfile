FROM linuxbrew/alpine

LABEL maintainer="Manuel Perez <darkpriestrelative@gmail.com>"
LABEL name="darkestpriest/aws-sam-cli"

USER root
RUN addgroup -S docker && addgroup linuxbrew docker
RUN apk add --no-cache py-pip && pip install awscli
RUN brew tap aws/tap
RUN brew install aws-sam-cli
RUN apk add docker docker-cli openrc
RUN rc-update add docker boot

USER root

EXPOSE 3000