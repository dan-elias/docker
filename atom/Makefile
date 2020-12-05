
.ONESHELL:

.PHONY: run

run:
	docker run \
	--rm \
	--detach \
	--volume /tmp/.X11-unix/:/tmp/.X11-unix/ \
	--volume /dev/shm:/dev/shm \
	--volume $${HOME}:/home/atom \
	--volume `pwd`:/home/normaluser/$(shell basename `pwd`) \
	--env DISPLAY=unix$$DISPLAY \
	--name atom \
	jamesnetherton/docker-atom-editor
