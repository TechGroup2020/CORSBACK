FROM centos
RUN mkdir /opt/tomcat/
RUN mkdir /opt/del/
WORKDIR /opt/tomcat/
CMD chmod 777 /opt/del
RUN curl -O http://archive.apache.org/dist/tomcat/tomcat-8/v8.5.40/bin/apache-tomcat-8.5.40.tar.gz
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-8.5.40/* /opt/tomcat/.
RUN yum -y install java
RUN java -version
RUN yum install -y maven
RUN curl -sL https://rpm.nodesource.com/setup_8.x
RUN yum install -y nodejs
RUN npm install -g @angular/cli
COPY target/TESTBACK.war /opt/tomcat/webapps
RUN sed -i 's/port="8080"/port="6060"/' /opt/tomcat/conf/server.xml
WORKDIR /opt/tomcat/bin
EXPOSE 6060
RUN cd /opt/tomcat/bin
RUN rm -r -f /opt/del/
CMD ["./catalina.sh" ,"start"]


