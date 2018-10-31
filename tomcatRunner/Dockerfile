FROM tomcat:8.5-jre8
MAINTAINER austin-wang@nec.com.tw

# 1.0, 1.1 => FROM Debian:jessie:stable, but it has git encoding problem.
# 0.3 => FROM tomcat:8.5, it can 
# 0.4 => add local-runner
# 0.5 => add repository.tar
# 0.6 => add pmd-bin-6.9.0.zip

COPY assets/repository/ /root/.m2/repository/
COPY assets/gradle-4.8.1 /opt/gradle/gradle-4.8.1/
ENV PATH="$PATH:/opt/gradle/gradle-4.8.1/bin"
COPY assets/pmd-bin-6.8.0/ /root/pmd-bin-6.8.0/
ENV PATH="$PATH:/root/pmd-bin-6.8.0/bin"

RUN apt-get update \
 && apt-get install git openjdk-8-jdk lftp wget unzip maven -y \
 && echo "END RUN"