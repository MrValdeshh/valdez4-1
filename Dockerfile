FROM gojolvl99/gojo-v2-core:latest

LABEL maintainer="MrValdez"
LABEL description="Xray container with custom config"
LABEL version="1.0"

EXPOSE 8080

COPY config.json /etc/v2ray/config.json

CMD ["xray", "-config", "/etc/v2ray/config.json"]
