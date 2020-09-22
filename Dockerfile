FROM jenkins/jenkins:lts

USER root

RUN apt-get update && apt-get install -y lsb-release smbclient

RUN apt-key adv --fetch-keys https://download.docker.com/linux/debian/gpg && echo "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" >> /etc/apt/sources.list && apt-get update && apt-get install -y docker-ce-cli

USER jenkins
