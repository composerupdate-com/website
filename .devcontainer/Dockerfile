FROM debian:stable-slim

RUN apt-get update

RUN apt-get install sudo -y

RUN sudo apt-get install -y \
        build-essential \
        libssl-dev \
        curl \
        git \
        gnupg2 \
        jq \
        sudo

WORKDIR /home

COPY . .
