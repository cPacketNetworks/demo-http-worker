
FROM alpine:3.10
RUN apk add --no-cache curl iproute2 bash
WORKDIR /app
COPY http_get.sh /app
CMD ["/bin/bash", "./http_get.sh"]
