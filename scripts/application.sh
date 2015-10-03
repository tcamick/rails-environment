#!/usr/bin/env bash

apt-get update
apt-get upgrade

#Add apt repositories

apt-get --yes --force-yes install software-properties-common
apt-add-repository ppa:brightbox/ruby-ng
apt-get update

apt-get --yes --force-yes install ruby2.2 ruby2.2-dev
apt-get --yes --force-yes install ruby-switch
apt-get --yes --force-yes install bundler
ruby-switch --set ruby2.2
ruby -v

#Install Other Dependencies

apt-get update
apt-get --yes --force-yes install vim git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev nodejs  -y

#Install MySQL

sudo apt-get install mysql-server mysql-client libmysqlclient-dev -y

#Install PostgreSQL
# This is the DB OpenFoodNetwork Uses.

#sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
#sudo apt-get install wget ca-certificates
#sudo apt-get update
#sudo apt-get upgrade
#sudo apt-get install postgresql-9.4 postgresql-common

#Install Rails
gem install rails

#I don't think it's a bad idea to run the following manually
#gem install passenger
#rvmsudo passenger-install-nginx-module

#Edit /opt/nginx/conf/nginx.conf
#To look something like this

#server {
#listen 80;
#server_name example.com;
#passenger_enabled on;
#root /var/www/amickglass/public;
#}
