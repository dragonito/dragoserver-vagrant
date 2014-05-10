#!/usr/bin/env bash

debconf-set-selections <<< 'mysql-server mysql-server/root_password password vagrant'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password vagrant'

apt-get update
apt-get install -y apache2 libapache2-mod-php5 php5 php5-mysql php5-xdebug mysql-server vim git
rm -rf /var/www
ln -fs /vagrant/www /var/www
