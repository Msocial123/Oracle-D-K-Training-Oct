FROM ubuntu:latest

WORKDIR /app

RUN apt update -y

RUN apt install apache2 -y   # root location of apache2 /var/www/html # port no is 80


COPY index.html /var/www/html

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]


