#!/bin/bash
echo "executing script"
sudo apt-get update -y
sudo apt-get install default-jre -y
sudo apt-get install apache2 -y
echo "entering html"
chmod 777 /var/www/html
sudo cp /tmp/tmp/app/* /var/www/html
ls
cd  /var/www/html
ls
sudo rm index.html
ls
nohup java -jar spring-boot-hello-world-1.0.0-SNAPSHOT.jar > index.html 2>&1 &