
.PHONY: all
all: build run

.PHONY: build
build:
	docker build -t beam-demo .
	
.PHONY: run
run:
	docker run --rm -it -p 80:80 --env-file .env beam-demo
