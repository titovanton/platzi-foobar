#!/usr/bin/env bash

# hostname
hostname fooBar
echo "127.0.0.1 fooBar" >> /etc/hosts
echo "fooBar" > /etc/hostname

# .bashrc
echo "cd /vagrant/fooBar" >> /home/vagrant/.bashrc

# apt-get update
# apt-get upgrade -y

## install sass
# gem install sass

# node
apt-get autoremove -y node
apt-get install -y python-software-properties python g++ make
curl -sL https://deb.nodesource.com/setup_4.x | bash -
apt-get install -y nodejs

# sails and dependencies
npm install -g sails
npm install -g nodemon

cd /vagrant
sails new fooBar
chown -R vagrant:vagrant /vagrant/fooBar

echo "Voila!"
