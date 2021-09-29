FROM wordpress:php7.1-apache

RUN apt-get update && apt-get install -y wget

COPY bin/burp.sh /var/www/html/.