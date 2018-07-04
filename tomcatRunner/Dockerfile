FROM ubuntu:artful
MAINTAINER austin-wang@nec.com.tw

RUN apt-get update && apt-get install git lftp software-properties-common -y \
&& echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu zesty main" >> /etc/apt/sources.list \
&& echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu zesty main" >> /etc/apt/sources.list \
&& gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv C2518248EEA14886 \
&& gpg --export --armor C2518248EEA14886 | apt-key add - \
&& add-apt-repository ppa:webupd8team/java -y && apt-get update  \
&& echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections \
&& apt-get install oracle-java8-installer -y