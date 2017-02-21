#!/usr/bin/env bash

apt-get update

# install python
apt-get install python-dev python-pip -q -y
apt-get install python-virtualenv  -y

# install mongodb
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6
echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-3.4.list
apt-get update
apt-get install -y mongodb-org
service mongod start

# install nginx
apt-get install -y nginx

# install nodejs and npm
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
apt-get install -y nodejs
apt-get install npm

# install yeoman w/ angular2 generator
npm install -g yo generator-angular2

# install bower
npm install -g bower

# install grunt
npm install -g grunt-cli