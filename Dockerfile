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
                    hexedit -y --no-install-recommends \
    && mkdir /opt/gradle && wget https://services.gradle.org/distributions/gradle-4.3.1-bin.zip -O /tmp/gradle.zip \
    && unzip /tmp/gradle.zip -d /opt/gradle/ && rm -f /tmp/gradle.zip \
    && echo "export PATH=/opt/gradle/gradle-4.3.1/bin:$PATH" >> /root/.bashrc
