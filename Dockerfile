FROM alpine:3.11.6

ENV VERSION=0.51.0

RUN apk add --no-cache curl && curl -sSLO https://github.com/awslabs/aws-sam-cli/releases/download/v${VERSION}/aws-sam-cli-${VERSION}.x86_64_linux.bottle.tar.gz && tar -C /usr/local/bin -zxvf /aws-sam-cli-${VERSION}.x86_64_linux.bottle.tar.gz && apk del curl && rm -f /sam_${VERSION}_linux_386.tar.gz

RUN apk add --no-cache py-pip && pip install awscli

EXPOSE 3000

WORKDIR /var/opt