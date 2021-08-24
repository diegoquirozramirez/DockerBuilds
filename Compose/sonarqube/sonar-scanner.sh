#/bin/bash

apt-get update
apt-get install unzip wget nodejs -y

mkdir /home/diego/Descargas/sonarqube -p
cd /home/diego/Descargas/sonarqube
wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.2.0.1873-linux.zip
unzip sonar-scanner-cli-4.2.0.1873-linux.zip
mv sonar-scanner-4.2.0.1873-linux /opt/sonar-scanner