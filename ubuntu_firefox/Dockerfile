FROM ubuntu:latest

COPY _build/setup/ /setup
WORKDIR /setup/scripts

RUN cd `./get_distro` \
    && ./update_installer \
    && ./install_x11 \
    && ./install_firefox \
    && ./set_up_normaluser \
    && cd / && rm -r setup

USER normaluser
WORKDIR /home/normaluser
 
CMD firefox
