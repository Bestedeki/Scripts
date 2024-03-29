#!/bin/bash
# Install OpenJDK 17 JRE Headless
sudo apt install openjdk-11-jre -y
# Download Jenkins GPG key
curl -fsSL https://pkg.jenkins.io/debian/jenkins.io-2023.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null
# Add Jenkins repository to package manager sources
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null
# Update package manager repositories
sudo apt-get update
# Install Jenkins
sudo apt-get install jenkins -y
# Login to Jenkins UI
# Install docker pipeline
sudo apt update
sudo apt install docker.io
sudo su - 
usermod -aG docker jenkins
usermod -aG docker ubuntu
systemctl restart docker
# Restart Jenkins using 
http://<ec2-instance-public-ip>:8080/restart
