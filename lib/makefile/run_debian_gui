
run:
	 docker run \
		 --rm \
		 --detach \
		 --name $(IMAGE_NAME) \
		 --hostname $(IMAGE_NAME) \
		 --env DISPLAY \
		 --volume /tmp/.X11-unix:/tmp/.X11-unix:ro \
		 $(ADDITIONAL_RUN_PARAMS) $(IMAGE_SPEC)

