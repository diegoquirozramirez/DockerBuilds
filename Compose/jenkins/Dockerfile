FROM jenkins/jenkins
COPY executors.groovy /usr/share/jenkins/ref/init.groovy.d/executors.groovy
USER root

#RUN curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py" && python get-pip.py

RUN  apt-get update -y

RUN apt install python3-pip -y

RUN apt install python -y

RUN apt install python-pip -y

RUN pip3 install -U ansible

USER jenkins