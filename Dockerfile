FROM tomcat:8.5-jre8
MAINTAINER austin-wang@nec.com.tw

RUN apt-get update && apt-get install git openjdk-8-jdk lftp  -y