FROM eclipse-temurin:17-jdk-jammy
MAINTAINER liheng<lzheng99@wisc.com>

ENV MYPATH /app
WORKDIR $MYPATH

#vim
# RUN yum -y install vim
#ifconfig
# RUN yum -y install net-tools
ADD DockerTest.jar DockerTest1.jar
RUN bash -c 'touch DockerTest1.jar'

ENTRYPOINT ["java","-jar","DockerTest1.jar"]

EXPOSE 9998

