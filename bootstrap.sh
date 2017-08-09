#!/usr/bin/env bash

apt-get update


# set up nginx server
mkdir -p /var/nginx/configs/sites-available
mkdir -p /var/nginx/configs/sites-enabled

cp -rf /vagrant/configs/nginx/. /var/nginx/configs/
chmod 644 /var/nginx/configs/sites-available/site.conf
ln -sf /var/nginx/configs/sites-available/site.conf /var/nginx/configs/sites-enabled/site.conf