FROM ubuntu:22.04

RUN apt-get update && apt-get install -y apache2

RUN echo "Hello from Besant Docker Project" > /var/www/html/index.html

CMD ["apachectl", "-D", "FOREGROUND"]
