FROM tomcat:8.5-jre8
MAINTAINER austin-wang@nec.com.tw

# 1.0, 1.1 => FROM Debian:jessie:stable, but it has git encoding problem.
# 0.3 => FROM tomcat:8.5, it can 
# 0.4 => add local-runner
# 0.5 => add repository.tar

ENV PATH="$PATH:/opt/gradle/gradle-4.8.1/bin"
COPY repository.tar /root/.m2/repository.tar

RUN apt-get update \
 && apt-get install git openjdk-8-jdk lftp wget unzip maven -y \
 && wget https://services.gradle.org/distributions/gradle-4.8.1-bin.zip \
 && mkdir /opt/gradle \
 && unzip -d /opt/gradle gradle-4.8.1-bin.zip \
 && cd /root/.m2 \
 && tar zxvf repository.tar \
 && echo "END RUN"
