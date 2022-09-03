FROM ubuntu:22.04

RUN apt update -y \
    && apt upgrade -y \
    && wget -O- https://aka.ms/install-vscode-server/setup.sh | sh 

ENTRYPOINT ["/bin/code-server", "--accept-server-license-terms", "--disable-telemetry"]