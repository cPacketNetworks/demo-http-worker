.PHONY: demo-http_worker

build: demo-http_worker

demo-http_worker:
	docker build --tag demo-http_worker .
