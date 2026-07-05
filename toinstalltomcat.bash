#!/bin/bash

sudo yum update -y
sudo yum install java-17-amazon-corretto wget -y

cd /opt
sudo wget https://downloads.apache.org/tomcat/tomcat-10/v10.1.44/bin/apache-tomcat-10.1.44.tar.gz
sudo tar -xzf apache-tomcat-10.1.44.tar.gz
sudo mv apache-tomcat-10.1.44 tomcat

sudo /opt/tomcat/bin/startup.sh

echo "Tomcat installed and started successfully."
