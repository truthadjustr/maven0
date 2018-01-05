FROM maven:latest

RUN apt-get update && \
    apt-get install \
                    vim \
                    apt-transport-https \
                    netcat \
                    socat \
                    net-tools \
                    vifm \
                    tcpdump \
                    file \
                    xmlstarlet \
                    jq \
                    hexedit -y --no-install-recommends
