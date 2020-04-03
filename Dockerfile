FROM alpine:3.7
# golangbase with glibc-2.27-r0, curl
COPY sgerrand.rsa.pub /etc/apk/keys/sgerrand.rsa.pub
COPY glibc-2.27-r0.apk /tmp/glibc-2.27-r0.apk 
RUN apk update && apk add curl && apk add /tmp/glibc-2.27-r0.apk 
