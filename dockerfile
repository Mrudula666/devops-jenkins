FROM tomcat:8.0
RUN rm /usr/local/tomcat/conf/tomcat-users.xml
ADD target/pipeline.war /usr/local/tomcat/webapps/
ADD tomcat-users.xml /usr/local/tomcat/conf/
EXPOSE 8080
CMD ["catalina.sh", "run"]
