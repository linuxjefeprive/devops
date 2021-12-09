#!/bin/bash
#This script is needed for RPM repo's to configure Jenkins to autostart, and to allow to be reached past the firewall. For Debian distros this is
#Not necesarry, as the installer handles all the requirements in terms of port, service, etc. 

# First make sure to only execute the RPM specific commands on RPM distro's

if [[ -f /usr/bin/yum ]]; then

# Set variables for use in the script
PORT=8080
PERM="--permanent"
SERV="$PERM --service=jenkins"

# Set all firewall options, as per the jenkins documentation's advice (Pretty simple firewall configuration anyway )

firewall-cmd $PERM --new-service=jenkins
firewall-cmd $SERV --set-short="Jenkins Port"
firewall-cmd $SERV --set-description="Jenkins port allowance"
firewall-cmd $SERV --add-port=$PORT/tcp
firewall-cmd $PERM --add-service=jenkins 
firewall-cmd --zone=public --add-service=http --permanent 

fi

# Restart systemctl daemon, start the service and give output to see if it is running 

sudo systemctl daemon-reload
sudo systemctl start jenkins
sudo systemctl status jenkins

exit 0 
