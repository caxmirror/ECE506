FROM centos:7
MAINTAINER liheng<lzheng99@wisc.com>

ENV MYPATH /usr/local
WORKDIR $MYPATH

#安装vim编辑器
RUN yum -y install vim
#安装ifconfig命令查看网络IP
RUN yum -y install net-tools
#安装java21及lib库
RUN yum -y install glibc
RUN mkdir /usr/local/java
#ADD 是相对路径jar,把jdk-21-linux-x64.tar.gz添加到容器中,安装包必须要和Dockerfile 文件在同一位置
ADD jdk-21_linux-x64_bin.tar.gz /usr/local/java/
#配置java环境变量
ENV JAVA_HOME /usr/local/java/jdk-21.0.1
#ENV JRE_HOME $JAVA_HOME/jre
#ENV CLASSPATH $JAVA_HOME/lib/dt. jar: $JAVA_HOME/lib/tools. jar: $JRE_HOME/lib: $CLASSPATH
ENV CLASSPATH $JAVA_HOME/bin:$CLASSPATH
ENV PATH $JAVA_HOME/bin:$PATH

EXPOSE 80
CMD echo $MYPATH
CMD echo "success-----------OK"
CMD /bin/bash