.PHONY: demo-http_worker

build: demo-http_worker

demo-http_worker:
	docker build --tag demo-http_worker .

run-interactive:
	docker run --cap-add=NET_ADMIN -e URL=https://www.google.com -it demo-http_worker /bin/bash

run:
	docker run --cap-add=NET_ADMIN -e URL=https://www.google.com demo-http_worker

run-loss:
	docker run --cap-add=NET_ADMIN -e URL=https://www.google.com -e TC_LOSS="10%" demo-http_worker

run-delay:
	docker run --cap-add=NET_ADMIN -e URL=https://www.google.com -e TC_DELAY="50ms" demo-http_worker

# tag-push:
#	docker tag demo-http_worker jjohnstoncpacket/demo-http-worker
#	docker push jjohnstoncpacket/demo-http-worker
