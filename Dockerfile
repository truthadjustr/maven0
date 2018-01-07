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
    && wget https://repo.spring.io/release/org/springframework/boot/spring-boot-cli/1.5.9.RELEASE/spring-boot-cli-1.5.9.RELEASE-bin.tar.gz -O /tmp/spring-boot-cli.tar.gz \
    && tar -xf /tmp/spring-boot-cli.tar.gz -C /opt/ && rm -f /tmp/spring-boot-cli.tar.gz \
    && echo "export PATH=/opt/gradle/gradle-4.3.1/bin:/opt/spring-1.5.9.RELEASE/bin:$PATH" >> /root/.bashrc
