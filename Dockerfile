FROM linuxbrew/alpine
LABEL maintainer="Manuel Perez <darkpriestrelative@gmail.com>"
LABEL name="darkestpriest/aws-sam-cli"

USER root
RUN addgroup -S app && adduser -S -G app app
RUN apk add --no-cache py-pip && pip install awscli
RUN brew tap aws/tap
RUN brew install aws-sam-cli

USER linuxbrew

EXPOSE 3000