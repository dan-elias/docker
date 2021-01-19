FROM miniconda:latest 

USER root

RUN apt-get update && apt-get -y install \
        build-essential \
        graphviz \
        pandoc \
        swig \
        tree \
        vim \
        &&\
    rm -rf /var/lib/apt/lists/*

RUN conda update --yes conda &&\
    conda config --append channels conda-forge && \
    conda config --append channels anaconda && \
    conda config --append channels pytorch && \
    conda install --yes \
        ipython ipywidgets nodejs requests qgrid setuptools sphinx \
        python-dateutil pyyaml \
        fastparquet h5py psycopg2 pyarrow \
        numba numpy pandas \
        bokeh datashader graphviz matplotlib mpld3 seaborn \
        dask dask-ml \
        lightgbm scikit-learn sklearn-pandas xgboost \
        keras pytorch tensorflow \
        hyperopt tpot \
        nbconvert papermill \
        kaggle \
        && \
    pip install \
        auto-sklearn \
        &&\
    jupyter nbextension enable --py widgetsnbextension &&\
    jupyter labextension install @jupyter-widgets/jupyterlab-manager &&\
    pip cache purge &&\
    conda clean --all --yes

USER normaluser

RUN conda init --all &&\
    jupyter notebook --generate-config

COPY user_homedir/ /home/normaluser
