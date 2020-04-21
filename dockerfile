FROM tomcat:8.0
LABEL maintaining="nmrchandra3@gmail.com"
ADD webapp.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
