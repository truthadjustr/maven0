FROM maven:latest

RUN apt-get update && \
    apt-get install \
                    vim \
                    apt-transport-https \
                    netcat \
                    socat \
                    net-tools \
                    vifm 
#                    libx11-6 \
#                    tcpdump \
#                    file \
#                    xmlstarlet \
#                    jq \
#                    hexedit -y --no-install-recommends
