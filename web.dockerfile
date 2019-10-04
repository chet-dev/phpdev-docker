# Get the latest ubuntu - current version is 18.04 LTS
# docker exec -it <container id> bash (to access container shell)
# cat /etc/os-release to check in the running container
FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y nano
RUN apt-get install -y apache2 
RUN apt-get install -y php 
RUN apt-get install -y php-dev 
RUN apt-get install -y php7.2-mysql 
RUN apt-get install -y libapache2-mod-php 
RUN apt-get install -y php-curl 
RUN apt-get install -y php-json 
RUN apt-get install -y php-common 
RUN apt-get install -y php-mbstring 
RUN apt-get install -y composer

COPY ./php.ini /etc/php/7.2/apache2/php.ini

CMD ["apachectl","-D","FOREGROUND"]
RUN a2enmod rewrite
EXPOSE 80
EXPOSE 443