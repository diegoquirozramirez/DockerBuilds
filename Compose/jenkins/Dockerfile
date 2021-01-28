FROM jenkins/jenkins
COPY executors.groovy /usr/share/jenkins/ref/init.groovy.d/executors.groovy
USER root
RUN  apt-get update -y

#For Ansible installer

#ARG DEBIAN_FRONTEND=noninteractive
#RUN apt install python3 -y
#RUN apt install python3-pip -y
#RUN ln -s /usr/bin/pip3 /usr/bin/pip
#RUN ln -sv -f  /usr/bin/python3 /usr/bin/python
#RUN pip3 install -U ansible

#For the nodejs installer

RUN curl -sL https://deb.nodesource.com/setup_12.x  | bash -
RUN apt -y install nodejs
RUN apt-get update && apt-get install -y apt-transport-https \
       ca-certificates curl gnupg2 \
       software-properties-common
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN apt-key fingerprint 0EBFCD88
RUN add-apt-repository \
       "deb [arch=amd64] https://download.docker.com/linux/debian \
       $(lsb_release -cs) stable"
       
RUN apt-get update && apt-get install -y docker-ce-cli

#For Docker Compose Installer

RUN curl -L "https://github.com/docker/compose/releases/download/1.28.2/docker-compose-$(uname -s)-$(uname -m)" -o /us$
RUN chmod +x /usr/local/bin/docker-compose

#For add credentials execute CLI DOCKer to user Jenkins

RUN chown jenkins:jenkins -R /var/run/

USER jenkins

##docker exec -u root jenkins_server bash -c "chown -R jenkins:jenkins /var/jenkins_home/ansible/id_rsa"
##docker exec -u root jenkins_server bash -c "chmod 600 /var/jenkins_home/ansible/id_rsa"

## URL SSH GENERATE https://www.hostinger.es/tutoriales/llaves-ssh
