FROM ubuntu

USER root
WORKDIR /home/
RUN apt-get install apache2 apache2-utils
