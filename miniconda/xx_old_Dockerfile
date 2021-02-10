FROM continuumio/miniconda3:latest

RUN useradd -ms /bin/bash normaluser \
 && echo "normaluser:normaluser" | chpasswd

RUN apt-get -y update && apt-get -y install xauth

RUN apt-get -y install \
        firefox-esr \
        libcanberra-gtk-module \
        libcanberra-gtk3-module

RUN conda install -y -c conda-forge jupyterlab

USER normaluser
WORKDIR /home/normaluser

CMD jupyter notebook --ip=0.0.0.0
