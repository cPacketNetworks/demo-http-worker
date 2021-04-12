# demo-http-worker
A docker curl to generate traffic for demos. Supports adding random loss and latency impairments.  See the the Makefile for more options.

## Build
```make```

## Run 
See Makefile for more examples
```
run:
	docker run --cap-add=NET_ADMIN -e URL=https://www.google.com demo-http_worker

run-loss:
	docker run --cap-add=NET_ADMIN -e URL=https://www.google.com -e TC_LOSS="10%" demo-http_worker

run-delay:
	docker run --cap-add=NET_ADMIN -e URL=https://www.google.com -e TC_DELAY="50ms" demo-http_worker
 ```
 or 
```make run```

##Azure Container Notes
Azure containers currently doesn't support privileged mode.  You can read about it [here](https://feedback.azure.com/forums/602224-azure-container-instances/suggestions/33870166-aci-support-for-privileged-container).  GCP and AWS should be supported. 

Using VM with Docker installed on Azure allows the loss and latency impairments.
