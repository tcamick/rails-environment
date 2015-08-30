#!/usr/bin/env bash

apt-get update
apt-get upgrade

#Add apt repositories

apt-get install software-properties-common
apt-add-repository ppa:brightbox/ruby-ng
apt-get update

apt-get install ruby2.2 ruby2.2-dev
apt-get install ruby-switch
apt-get install bundler
ruby-switch --set ruby2.2
ruby -v

#Install Other Dependencies

apt-get update
apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev

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