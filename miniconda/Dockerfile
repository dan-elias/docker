FROM continuumio/miniconda3:latest

COPY _build/setup/ /setup
WORKDIR /setup/scripts

RUN cd `./get_distro` \
    && ./update_installer \
    && ./install_x11 \
    && ./install_firefox \
    && ./set_up_normaluser \
    && cd /setup \
    && conda env update --name base \
    && cd / && rm -r setup

USER normaluser
WORKDIR /home/normaluser

CMD jupyter notebook --ip=0.0.0.0
