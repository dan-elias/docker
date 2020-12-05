FROM alpine:latest

RUN adduser -S normaluser \
 && echo "normaluser:normaluser" | chpasswd

RUN apk --no-cache --update add dbus-x11

RUN apk --no-cache --update add firefox-esr ttf-ubuntu-font-family

USER normaluser
WORKDIR /home/normaluser

CMD firefox
