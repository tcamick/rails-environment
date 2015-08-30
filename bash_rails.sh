#!/bin/bash

sudo apt-get update sudo apt-get upgrade

#Add apt repositories

sudo apt-get install software-properties-common
sudo apt-add-repository ppa:brightbox/ruby-ng
sudo apt-get update

sudo apt-get install ruby2.2 ruby2.2-dev
sudo apt-get install ruby-switch
sudo apt-get install bundler
sudo ruby-switch --set ruby2.2
ruby -v

#Install Other Dependencies

sudo apt-get update
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev

#Install MySQL

#sudo apt-get install mysql-server mysql-client libmysqlclient-dev

#Install PostgreSQL

#sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
#sudo apt-get install wget ca-certificates
#sudo apt-get update
#sudo apt-get upgrade
#sudo apt-get install postgresql-9.4 postgresql-common


#Install Rails
gem install rails
