FROM tomcat:8-jre8
MAINTAINER chinnadas
COPY **/*.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
