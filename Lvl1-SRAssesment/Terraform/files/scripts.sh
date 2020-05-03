#!/bin/bash

yum install nginx -y
systemctl enable nginx
systemctl start nginx
echo "Hello World Yeshwanth" >> /var/www/html/index.html
