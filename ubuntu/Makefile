
.ONESHELL:

.PHONY: build run xauth

IMAGE_NAME = $(shell echo ubuntu_firefox)
IMAGE_VERSION = $(shell echo 0.0.0)
IMAGE_SPEC = $(IMAGE_NAME):$(IMAGE_VERSION)

build: Dockerfile
	docker build --tag $(IMAGE_SPEC) --tag $(IMAGE_NAME):latest .

run:
	 docker run \
		 --rm \
		 --detach \
		 --name $(IMAGE_NAME) \
		 --env DISPLAY=unix$$DISPLAY \
		 --volume /tmp/.X11-unix:/tmp/.X11-unix \
		 $(IMAGE_SPEC)

xauth:
	xauth + local:docker

