
FROM alpine:3.10
WORKDIR /app
COPY http_get.sh /app
RUN apk add --no-cache curl
