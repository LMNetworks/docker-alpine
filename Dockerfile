FROM alpine:3.9.4

LABEL org.alpine.version="3.9.4"
LABEL image_name="lmnetworks/alpine"
LABEL maintainer="info@lm-net.it"

# prepare an updated Alpine Linux with included CA certificates
RUN apk update && apk upgrade && apk add ca-certificates && rm -rf /var/cache/apk/*

