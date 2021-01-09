FROM jenkins/jenkins
COPY executors.groovy /usr/share/jenkins/ref/init.groovy.d/executors.groovy
USER root

#RUN curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py" && python get-pip.py

RUN  apt-get update -y

ARG DEBIAN_FRONTEND=noninteractive

RUN apt install python3 -y

RUN apt install python3-pip -y

RUN ln -s /usr/bin/pip3 /usr/bin/pip

RUN ln -sv -f /usr/bin/python3 /usr/bin/python

RUN pip3 install -U ansible

USER jenkins

##docker exec -u root jenkins_server bash -c "chown -R jenkins:jenkins /var/jenkins_home/ansible/id_rsa"
##docker exec -u root jenkins_server bash -c "chmod 600 /var/jenkins_home/ansible/id_rsa"

## URL SSH GENERATE https://www.hostinger.es/tutoriales/llaves-ssh