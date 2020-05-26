FROM darkestpriest/aws-sam-cli:0.2

LABEL maintainer="Manuel Perez <darkpriestrelative@gmail.com>"
LABEL name="darkestpriest/lambda-function"

USER root
COPY ".aws-sam/" "/home/linuxbrew/.aws-sam/"

EXPOSE 3000

RUN sam local start-api --host 0.0.0.0