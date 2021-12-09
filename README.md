# devops
This is my CalTech DevOps PGP Program Project for the PG DO - DevOps Certification Training. Project 2, Ansible & Terraform. 

The assignment states we need to build a EC2 Instance using Terraform, and install python, java and jenkins on the instance using Ansible. 

I have made a github repo containing completely automated deployment of Terraform, Ansible, EC2 Instance, python,java and jenkins. 
The deployment is written in a way to be compatible on both .deb and .rpm distro's. This goes for the master OS (where the script is run) as well as the instance. 
The deployment is tested on ubutnu 18.04 LTS, Ubuntu 20.04 LTS and CentOS 8. Everything runs smoothly on all these OS's. I have not tested on other RPM / DEB distro's, but I imagine the script running just fine. 
If not, only very minor modifications are needed to make it run on other deb/rpm distros.

The script fully sets up a keypair, security group, ec2 instance, firewall rules, python,java and jenkins installation with a working jenkins server reachable from the internet

All you have to do to invoke the deployment is the following;

git clone https://github.com/linuxjefeprive/devops.git

cd devops

sudo ./script 

Output will be the url to browse to, and the password needed for first login into jenkins.


** IMPORTANT ** 
Because the simplilearn AWS credentials change every 8 hours, it is important to make sure the creds.tf file is up to date with the latest credentials, or terraform will hang. 


For grading, I made detailed comments in all the files contained in this repo. Please take your time to review all the code before making your decision on my grade, i've worked hard on this. 

I would advise you to review the files in the order they are invoked; 

README.md
script

main.tf 
keygen.tf
creds.tf
security.tf
outputs.tf 

playbook.yaml 
rpmrepo.sh
debrepo.sh

post-install-rpm.yaml
post-install.sh 

password.yaml 



