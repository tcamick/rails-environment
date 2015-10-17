#!/usr/bin/env bash

apt-get update
apt-get upgrade


sudo apt-get update
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev
sudo apt-get install apache2

#install ruby
sudo apt-get install libgdbm-dev libncurses5-dev automake libtool bison libffi-dev
curl -L https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm install 2.2.3
rvm use 2.2.3 --default
ruby -v

#
echo "gem: --no-ri --no-rdoc" > ~/.gemrc
gem install bundler

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

sudo apt-get install nodejs

sudo apt-get install mysql-server mysql-client libmysqlclient-dev

gem install rails -v 4.2.4
