#!/bin/bash
sudo apt install unzip openjdk-11-jre -y
sudo adduser sonarqube
sudo echo "sonarqube ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/sonarqube
# change to sonarqube user
cd /opt
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.4.0.54424.zip
sudo unzip sonarqube-9.4.0.54424.zip
sudo rm -rf sonarqube-9.4.0.54424.zip
sudo chmod -R 755 ./sonarqube-9.4.0.54424
sudo chown -R sonarqube:sonarqube ./sonarqube-9.4.0.54424
cd sonarqube-9.4.0.54424/bin/linux-x86-64/
sh ./sonar.sh start
