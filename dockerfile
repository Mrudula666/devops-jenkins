FROM tomcat:8.0
LABEL maintaining="nmrchandra3@gmail.com"
ADD C:\Program Files (x86)\Jenkins\workspace\webapp-jenkinsfile\webapp\target\webapp.war C:\Program Files (x86)\Jenkins\workspace\webapp-jenkinsfile\target
EXPOSE 8080
CMD ["catalina.sh", "run"]
