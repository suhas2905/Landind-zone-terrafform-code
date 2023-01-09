#!/bin/bash
sudo yum update -y
sudo yum install -y wget
sudo wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
sudo yum install epel-release-latest-8.noarch.rpm -y
sudo yum update -y
#sudo yum install curl vim git unzip python3 openssl ansible -y
sudo yum install curl vim git unzip python3 openssl python3-pip -y
sudo python3 -m pip install --upgrade pip
sudo python3 -m pip install ansible
sudo ln -s /usr/local/bin/ansible-playbook /usr/bin/ansible-playbook
# Clone the repo
#sudo rm -rf /home/ec2-user/jenkins
sudo git clone https://github.com/suhas2905/aws-install-sap-with-jenkins-ansible.git /home/ec2-user/jenkins
# Run playbook
sudo ansible-playbook /home/ec2-user/jenkins/jenkins-as-code/site.yml
# Wait for jenkins to restart
#sleep 30s
# Check if the service is up, running and responding
sudo bash /home/ec2-user/jenkins/jenkins-as-code/general-test.sh
