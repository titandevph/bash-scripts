#!/bin/bash
sudo apt-get update
sudo apt-get remove -y php* nginx apache* git
sudo apt-get purge -y php* nginx apache* git

sudo apt-get install -y git nginx php5-fpm unzip curl
sudo mkdir /var/www/
sudo mkdir /var/www/html
sudo service nginx stop
sudo rm -rf /etc/nginx/nginx.conf
sudo wget -c https://raw.githubusercontent.com/titandevph/bash-scripts/master/nginx.conf
sudo mv nginx.conf /etc/nginx/nginx.conf
sudo wget -c https://raw.githubusercontent.com/titandevph/hello-world-php/master/index.php
sudo mv index.php /var/www/html/index.php
sudo service php5-fpm restart
sudo service nginx restart
