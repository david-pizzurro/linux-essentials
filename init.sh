#!/bin/bash

## Basic Security
sudo apt-get update -y && sudo apt-get upgrade -y 
sudo apt-get install fail2ban ufw unattended-upgrades -y
sudo ufw allow OpenSSH && sudo ufw enable

## Time
sudo rm -f /etc/localtime
sudo ln -sf /usr/share/zoneinfo/America/New_York /etc/localtime

## Diffie-Hellman
sudo openssl dhparam -dsaparam -out /etc/ssl/private/dhparam2048.pem 2048 && \
sudo openssl dhparam -dsaparam -out /etc/ssl/private/dhparam4096.pem 4096
