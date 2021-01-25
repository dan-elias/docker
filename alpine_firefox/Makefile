DOCKERFILE = _build/Dockerfile

$(DOCKERFILE): FORCE
	mkdir -p `dirname $(DOCKERFILE)`
	cat \
		src/dockerfile_header \
		../lib/dockerfile/x11_alpine \
		../lib/dockerfile/normaluser_alpine \
		src/dockerfile_footer \
	> $(DOCKERFILE)

include ../lib/makefile/build
include ../lib/makefile/run_alpine_gui
