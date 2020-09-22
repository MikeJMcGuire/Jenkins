FROM jenkins/jenkins:lts

USER root

RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - && apt-get update && apt-get install -y smbclient docker-ce-cli

USER jenkins
