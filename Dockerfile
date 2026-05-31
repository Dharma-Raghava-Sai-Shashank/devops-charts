FROM jenkins/jenkins:lts

USER root

RUN apt-get update && \
    apt-get install -y docker.io git

# FIX GIT SAFE DIRECTORY ISSUE
RUN git config --global --add safe.directory '*'

USER jenkins