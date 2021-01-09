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