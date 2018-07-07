FROM tomcat:8.5-jre8
MAINTAINER austin-wang@nec.com.tw

RUN apt-get update \
 && apt-get install git openjdk-8-jdk lftp wget unzip -y \
 && wget https://services.gradle.org/distributions/gradle-4.8.1-bin.zip \
 && mkdir /opt/gradle \
 && unzip -d /opt/gradle gradle-4.8.1-bin.zip
 && export PATH=$PATH:/opt/gradle/gradle-4.8.1/bin
 && echo "END RUN"