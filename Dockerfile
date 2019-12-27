FROM tomcat
COPY web/target/*.war /usr/local/tomcat/webapps/
