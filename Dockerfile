FROM maven:latest

RUN apt-get update && \
    apt-get install \
                    vim \
                    apt-transport-https \
                    netcat \
                    socat \
                    net-tools \
                    vifm 
                    libx11-6 -y --no-install-recomends
#                    tcpdump \
#                    file \
#                    xmlstarlet \
#                    jq \
#                    hexedit -y --no-install-recommends
