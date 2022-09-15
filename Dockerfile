FROM ubuntu:22.04

RUN apt update -y \
    && apt install wget -y \
    && wget -O- https://aka.ms/install-vscode-server/setup.sh | bash 

CMD code-server serve-local --accept-server-license-terms --without-connection-token
