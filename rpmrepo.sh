#!/bin/bash
OS=`hostnamectl | grep -i "operating system" | awk '{print $3}' # See if we are running an Amazon OS, since these are very minimal

sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo # Install Repo data for yum
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key # Install GPG key for the repo 

if [[ "$OS" = "Amazon" ]]; then # If we are running Amazon Linux on the target server, use amazon-linux-extras to expand available packages.
sudo yum install -y amazon-linux-extras
sudo amazon-linux-extras enable epel java-openjdk11 # We will need 
yum clean metadata # Clean metadata to be able to use the new packages (stream)
sudo yum install epel-release -yy # install epel-release
else 
sudo yum install epel-release -yy # Same for regular RPM distro, without the amazon extras utility
sudo yum update -y 

exit 0 




