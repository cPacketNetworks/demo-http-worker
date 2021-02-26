
FROM alpine:3.10
RUN apk add --no-cache curl
WORKDIR /app
COPY http_get.sh /app
CMD ["/bin/sh", "./http_get.sh"]
