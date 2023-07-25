#!/bin/bash
sudo yum install java-1.8.0-openjdk-devel.x86_64 -y
sudo yum install tomcat -y
sudo yum install tomcat-webapps tomcat-admin-webapps -y
sudo yum install tomcat-docs-webapp tomcat-javadoc -y
sudo systemctl start tomcat
sudo systemctl enable tomcat


ls -l
pwd
ls -l /tmp/
ssh -o StrictHostKeyChecking=no -i /tmp/jun23.pem ec2-user@172.31.85.252 "hostname -i"
scp -o StrictHostKeyChecking=no -i /tmp/jun23.pem /tmp/tomcatinstall.sh ec2-user@172.31.85.252:/tmp/
ssh -o StrictHostKeyChecking=no -i /tmp/jun23.pem ec2-user@172.31.85.252 "ls -l /tmp/"
ssh -o StrictHostKeyChecking=no -i /tmp/jun23.pem ec2-user@172.31.85.252 "bash /tmp/tomcatinstall.sh"