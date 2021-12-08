#!/bin/bash
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum install -y amazon-linux-extras
sudo amazon-linux-extras enable epel java-openjdk11
yum clean metadata
sudo yum install epel-release -yy
exit 0 




