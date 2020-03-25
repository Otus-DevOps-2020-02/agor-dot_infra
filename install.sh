#!/bin/bash

sudo apt update
sudo apt install -y ruby-full ruby-bundler build-essential
sudo bash -c 'echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" > /etc/apt/sources.list.d/mongodb-org-3.2.list' && \
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0xd68fa50fea312927 && \
sudo apt update && \
sudo apt install -y mongodb-org && \
sudo systemctl start mongod && \
sudo systemctl enable mongod
status=$(sudo systemctl is-active mongod.service)
 if [ $status != 'active' ]
 then exit 1
 fi
cd $HOME
git clone -b monolith https://github.com/express42/reddit.git && cd reddit && bundle install
puma -d
