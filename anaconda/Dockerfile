FROM continuumio/anaconda3:latest

RUN useradd -ms /bin/bash normaluser \
 && echo "normaluser:normaluser" | chpasswd

RUN apt-get -y update && apt-get -y install xauth

RUN apt-get -y install firefox-esr 

EXPOSE 8888

USER normaluser
WORKDIR /home/normaluser

CMD jupyter notebook --ip=0.0.0.0
