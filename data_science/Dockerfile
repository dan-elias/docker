FROM continuumio/miniconda3:latest

COPY _build/setup/ /setup
WORKDIR /setup/scripts

RUN . ./cd_distro \
        && ./update_installer \
        && ./install_x11 \
        && ./install_cl_utils \
        && ./install_build_essential \
        && ./install_firefox \
        && ./install_git \
        && ./set_up_normaluser \
    && cd /setup/scripts/conda \
        && ./install_jupyter \
    && cd / \
        && rm -r setup

ENV SHELL=/bin/bash

USER normaluser
WORKDIR /home/normaluser

#CMD jupyter notebook --ip=0.0.0.0
CMD jupyter lab --ip=0.0.0.0
