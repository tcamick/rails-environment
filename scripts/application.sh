#!/usr/bin/env bash

apt-get update
apt-get upgrade

#Add apt repositories

apt-get --yes --force-yes install ruby2.2 ruby2.2-dev
apt-get --yes --force-yes install ruby-switch
echo "gem: --no-ri --no-rdoc" > ~/.gemrc
apt-get --yes --force-yes install bundler
ruby-switch --set ruby2.2

apt-get --yes --force-yes install mc vim git-core curl build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev nodejs
sudo apt-get install apache2 -y

#Install MySQL
sudo apt-get install mysql-server mysql-client libmysqlclient-dev -y

#Install Rails
gem install rails
