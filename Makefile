pwd = $(shell pwd)

docker-build-alpine-kong-dev:
	docker build -f alpine/Dockerfile -t kong-plugin-dev kong-dev

docker-kong-dev-repl: docker-build-alpine-kong-dev
	docker run -it --rm --name kong-plugin-dev-app kong-plugin-dev luajit

docker-kong-dev-sh: docker-build-alpine-kong-dev
	docker run -it --rm --name kong-plugin-dev-app kong-plugin-dev bash
