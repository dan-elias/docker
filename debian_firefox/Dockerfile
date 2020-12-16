FROM debian:latest

RUN useradd -ms /bin/bash normaluser \
 && echo "normaluser:normaluser" | chpasswd

RUN apt-get -y update && apt-get -y install xauth

RUN apt-get -y install firefox-esr

USER normaluser
WORKDIR /home/normaluser

CMD firefox
