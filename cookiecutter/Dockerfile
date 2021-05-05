FROM continuumio/miniconda3:latest

COPY _build/setup/ /setup
WORKDIR /setup/scripts

RUN . ./cd_distro \
        && ./update_installer \
        && ./set_up_normaluser \
    && cd /setup/scripts \
        && ./copy_skel \
    && cd /setup \
        && conda env update --name base --file environment.yml \
    && cd / \
        && rm -r setup \
    && echo

ENV SHELL=/bin/bash

USER normaluser
WORKDIR /home/normaluser
RUN conda init --all 

