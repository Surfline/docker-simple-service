all: build run

.PHONY: build
build:
	docker build -t surfline/simple-service .

.PHONY: run
run:
	docker run --rm -it -p 8080:8080 surfline/simple-service
