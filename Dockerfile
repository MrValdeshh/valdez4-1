FROM gojolvl99/gojo-v2-core:latest

LABEL maintainer="MrValdez"
LABEL description="Optimized Xray HTTP Upgrade container"
LABEL version="2.0"

# set working dir
WORKDIR /etc/v2ray

# copy config
COPY config.json /etc/v2ray/config.json

# expose all used ports
EXPOSE 8080 8081 8082 8083 8084 8085 8086 8087

# reduce possible file limit bottleneck
ENV XRAY_LOGLEVEL=warning

# use exec form (better performance than shell form)
ENTRYPOINT ["xray"]
CMD ["-config", "/etc/v2ray/config.json"]
