/*=================
= linux stuff
*/

sudo apt-get update
sudo apt-get -y install vim
sudo apt-get -y install git


/*
apache stuff
*/
sudo apt-get -y install apache2

sudo a2enmod expires
sudo a2enmod headers
sudo a2enmod include
sudo a2enmod rewrite


/*
php stuff
*/

sudo apt-get -y install php
sudo apt-get -y install libapache2-mod-php

sudo service apache2 restart

sudo apt-get -y install php-common
sudo apt-get -y install php-all-dev

sudo apt-get -y install php-mcrypt
sudo apt-get -y install php-zip
sudo apt-get -y install php-xxml


/*
mysql
*/

sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'

sudo apt-get -y install mysql-server
sudo mysqladmin -uroot - proot create scotchbox
sudo apt-get - y install php-mysql
sudo service apache2 restart

