FROM alpine:latest

RUN apk --no-cache --update add dbus-x11

RUN apk --no-cache --update add firefox-esr ttf-ubuntu-font-family

RUN adduser -D normaluser \
 && echo "normaluser:normaluser" | chpasswd

USER normaluser
WORKDIR /home/normaluser

CMD firefox
