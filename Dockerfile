FROM ubuntu:22.04

ARG SERVER_NAME=""

WORKDIR /app

RUN apt update -y \
    && apt install wget -y \
    && wget -O- https://aka.ms/install-vscode-server/setup.sh | bash 

CMD code-server serve --accept-server-license-terms
# docker run pacholoamit/vscode-server code-server rename --name mysecretwombo --accept-server-license-terms
# docker run