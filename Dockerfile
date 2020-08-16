FROM ubuntu:18.04

LABEL maintainer="pymyoswe007@gmail.com" vendor="pymyoswe" \
com.example.version="0.01"

RUN apt-get update && apt-get install -y apache2

RUN a2enmod rewrite

COPY *.conf /etc/apache2/sites-available/

WORKDIR /opt

CMD ["apachectl", "-D", "FOREGROUND"]

EXPOSE 80