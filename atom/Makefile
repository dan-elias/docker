
.ONESHELL:

.PHONY: run

START_SCRIPT = ${HOME}/bin/atom

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
	    --volume /tmp/.X11-unix/:/tmp/.X11-unix/ \
	    --volume /dev/shm:/dev/shm \
	    --volume ${HOME}:/home/atom \
	    --volume `pwd`:/home/normaluser/$(shell basename `pwd`) \
	    --env DISPLAY=unix${DISPLAY} \
	    --name atom \
	    jamesnetherton/docker-atom-editor
	)
	chmod +x $(START_SCRIPT)
