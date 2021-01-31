DOCKERFILE = _build/Dockerfile
DISTRO = alpine/latest
include ../include/generic/common.make

$(DOCKERFILE): FORCE
	mkdir -p `dirname $(DOCKERFILE)`
	cat \
		include/header.docker \
		$(INCLUDE)/firefox.docker \
		$(INCLUDE)/x11.docker \
		$(INCLUDE)/normaluser.docker \
		include/footer.docker \
	> $(DOCKERFILE)

include $(INCLUDE)/run_x11.make
