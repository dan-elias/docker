# Run an Alpine image with x11 enabled

# Requires:
#   * variables: IMAGE_NAME, IMAGE_SPEC
#
# Allows:
#   * variable:  ADDITIONAL_RUN_PARAMS

.PHONY: run

run:
	docker run \
		--rm \
		--detach \
		--name $(IMAGE_NAME) \
		--hostname $(IMAGE_NAME) \
		--env DISPLAY \
		--volume /tmp/.X11-unix:/tmp/.X11-unix:ro \
		--volume $$XAUTHORITY:/root/.Xauthority:ro \
		$(ADDITIONAL_RUN_PARAMS) $(IMAGE_SPEC) 


