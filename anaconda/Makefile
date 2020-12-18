
.ONESHELL:

.PHONY: build run xauth

IMAGE_NAME = $(shell basename `pwd`)
IMAGE_VERSION = $(shell echo 0.0.0)
IMAGE_SPEC = $(IMAGE_NAME):$(IMAGE_VERSION)
START_SCRIPT = ${HOME}/bin/d_$(IMAGE_NAME)
USERNAME = normaluser

build: Dockerfile
	docker build --tag $(IMAGE_SPEC) --tag $(IMAGE_NAME):latest .

run:
	$(MAKE) $(START_SCRIPT)
	$(START_SCRIPT)

start-script: $(START_SCRIPT) ;

$(START_SCRIPT):
	$(file >$(START_SCRIPT),
	#!/bin/bash

	docker run \
		--rm \
		--detach \
		--name $(IMAGE_NAME) \
		--hostname $(IMAGE_NAME) \
		--env DISPLAY \
		--volume `pwd`:/home/$(USERNAME)/$$(basename `pwd`) \
		--volume ${HOME}/dat:/home/$(USERNAME)/dat \
		--volume /tmp/.X11-unix:/tmp/.X11-unix \
		--device /dev/snd \
		$(IMAGE_SPEC) \
		$$@
	)
	chmod +x $(START_SCRIPT)
