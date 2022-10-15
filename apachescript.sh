#!/bin/bash
sudo yum update
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd

# Installing the firewall
sudo yum install firewalld -y
sudo systemctl start firewalld
sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --permanent --add-service=https
sudo firewall-cmd --reload
sudo firewall-cmd --permanent --list-all

# Creating index.html to edit web page
sudo touch /var/www/html/index.html

# Open index file to add custom html
sudo vim /var/www/html/index.html
