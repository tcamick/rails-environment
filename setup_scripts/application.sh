#!/usr/bin/env bash

#Add apt repositories
apt-add-repository ppa:brightbox/ruby-ng
apt-get update

apt-get --yes --force-yes install ruby2.2 ruby2.2-dev ruby-switch
echo "gem: --no-ri --no-rdoc" > ~/.gemrc
apt-get --yes --force-yes install bundler

ruby-switch --set ruby2.2

apt-get --yes --force-yes install mc vim git-core curl build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev nodejs apache2 

#Install MySQL
sudo apt-get install mysql-server mysql-client libmysqlclient-dev -y

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 561F9B9CAC40B2F7

echo "deb https://oss-binaries.phusionpassenger.com/apt/passenger trusty main" > /etc/apt/sources.list.d/passenger.list

sudo apt-get update
sudo apt-get install libapache2-mod-passenger
sudo a2enmod passenger
sudo service apache2 restart

cp /home/vagrant/src/scripts/thirdperson.conf /etc/apache2/sites-available/thirdperson.conf

sudo a2dissite 000-default
sudo a2ensite thirdperson
sudo service apache2 restart

#Install Rails
gem install rails
gem install rake

MYSQL=`which mysql`
 
Q1="CREATE DATABASE IF NOT EXISTS thirdperson_development;"
Q2="GRANT ALL ON thirdperson_development.* TO 'vagrant'@'localhost' IDENTIFIED BY 'vagrant';"
Q3="FLUSH PRIVILEGES;"
SQL="${Q1}${Q2}${Q3}"
 
$MYSQL -uroot -p -e "$SQL"



