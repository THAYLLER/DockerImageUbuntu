FROM ubuntu

RUN apt update && apt install -y apache2 && apt install -y apache2-utils && apt clean
ENV APACHE_LOCK_DIR="/var/lock"
ENV APACHE_PID_FILE="/var/run/apache2.pid"
ENV APACHE_RUN_USER="www-data"
ENV APACHE_RUN_GROUP="www-data"
ENV APACHE_LOG_DIR="/var/log/apache2"

LABEL Description="Webserver"

VOLUME /var/www/html

EXPOSE 80

