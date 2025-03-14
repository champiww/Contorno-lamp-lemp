FROM ubuntu:22.04

#Instalar paquetes necesarios (php-fpm extensions php)
RUN apt update && \
DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC \
apt install -y \
php8.1-fpm \
curl \
wget \
git \
&& rm -rf /var/lib/apt/lists/* /var/cache/apt/*

RUN apt update && \
    apt install -y  php8.1-mysql php-xml php-gd php-zip php-intl php-json php-curl php-mbstring php-pdo

#Instrucción para que o contedor escoite nun porto e non nun socket

EXPOSE 9000

#Instruciónn para que o servizo php-fpm se inicie
ENTRYPOINT [ "php-fpm8.1", "-F"]