# demo-http-worker
docker curl to generate traffic for demos

## build
```make```

## run 
```docker run -e CURL_CMD="-s http://www.yahoo.com" demo-http_worker /bin/sh /app/http_get.sh```
