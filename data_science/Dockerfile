FROM continuumio/miniconda3:latest

COPY _build/setup/ /setup
WORKDIR /setup/scripts

RUN . ./cd_distro \
        && ./update_installer \
        && ./install_x11 \
        && ./install_cl_utils \
        && ./install_build_essential \
        && ./install_firefox \
        && ./set_up_normaluser \
    && cd /setup/scripts/conda \
        && ./install_jupyter \
        && ./install_ipywidgets
 
#        && ./install_qgrid \
#    && cd / \
#        && rm -r setup

RUN conda install -y -c conda-forge pandas
RUN pip install qgrid

jupyter nbextension enable --py --sys-prefix qgrid
jupyter nbextension enable --py --sys-prefix widgetsnbextension
jupyter labextension install @jupyter-widgets/jupyterlab-manager
#jupyter labextension enable qgrid2
jupyter labextension install @8080labs/qgrid



ENV SHELL=/bin/bash

USER normaluser
WORKDIR /home/normaluser

#CMD jupyter notebook --ip=0.0.0.0
CMD jupyter lab --ip=0.0.0.0
