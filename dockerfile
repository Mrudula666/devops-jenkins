FROM tomcat:jdk8
RUN java -version
ADD target/webapp-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/
RUN rm /usr/local/tomcat/conf/tomcat-users.xml
ADD tomcat-users.xml /usr/local/tomcat/conf/
EXPOSE 8080
CMD ["catalina.sh", "run"]
