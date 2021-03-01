# demo-http-worker
docker curl to generate traffic for demos

## Build
```make```

## Run 
See Makefile for more examples

```docker run -e URL="http://www.yahoo.com" demo-http_worker```
 or 
```make run```

##Azure Notes
Azure currently doesn't support privileged mode.  You can read about it [here](https://feedback.azure.com/forums/602224-azure-container-instances/suggestions/33870166-aci-support-for-privileged-container).  GCP and AWS should be supported. 