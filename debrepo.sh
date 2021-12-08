#!/bin/bash
sudo wget  https://pkg.jenkins.io/debian-stable/jenkins.io.key 
sudo apt-key add jenkins.io.key 
echo deb https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null 
sudo apt-get update
exit 0 






























