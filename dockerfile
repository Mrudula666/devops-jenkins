FROM tomcat:8.0
LABEL maintaining="nmrchandra3@gmail.com"
ADD /var/lib/docker/tmp/docker-builder077402651/webapp.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
