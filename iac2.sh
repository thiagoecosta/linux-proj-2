#!/bin/bash

echo "Atualizando o repositório..."

apt-get update
apt-get upgrade -y

echo " Instalando o APACHE..."

apt-get install apache2 -y

echo " Instalando o  unzip..."

apt-get install unzip -y

echo " Baixando, extaindo e movendoo o arquivo para o diretório específico..."

cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R  * /var/www/html

