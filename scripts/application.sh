#!/usr/bin/env bash

apt-get update
apt-get upgrade

#Add apt repositories

apt-get --yes --force-yes install software-properties-common
apt-add-repository ppa:brightbox/ruby-ng
apt-get update

apt-get --yes --force-yes install ruby2.2 ruby2.2-dev
apt-get --yes --force-yes install ruby-switch
echo "gem: --no-ri --no-rdoc" > ~/.gemrc
apt-get --yes --force-yes install bundler
ruby-switch --set ruby2.2
ruby -v

# Install our PGP key and add HTTPS support for APT
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 561F9B9CAC40B2F7
sudo apt-get install -y apt-transport-https ca-certificates

# Add our APT repository
sudo sh -c 'echo deb https://oss-binaries.phusionpassenger.com/apt/passenger trusty main > /etc/apt/sources.list.d/passenger.list'
sudo apt-get update

# Install Passenger + Apache module
sudo apt-get install -y libapache2-mod-passenger

#enable passenger module and restart
sudo a2enmod passenger
sudo apache2ctl restart

#validate-install
sudo passenger-config validate-install

#Install Other Dependencies

apt-get --yes --force-yes install vim git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev nodejs
sudo apt-get install apache2 -y

#Install MySQL

sudo apt-get install mysql-server mysql-client libmysqlclient-dev -y

#Install Rails
gem install rails
