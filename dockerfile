FROM tomcat:jdk8
RUN java -version
STAT /var/lib/docker/tmp/docker-builder131739601/target/
ADD target/webapp.war /usr/local/tomcat/webapps/
RUN rm /usr/local/tomcat/conf/tomcat-users.xml
ADD tomcat-users.xml /usr/local/tomcat/conf/
EXPOSE 8080
CMD ["catalina.sh", "run"]
