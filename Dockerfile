FROM jenkinsci/blueocean:latest

USER root

RUN apt-get update && apt-get install -y smbclient

USER jenkins
