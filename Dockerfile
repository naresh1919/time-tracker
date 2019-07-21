FROM tomcat:8-jre8
MAINTAINER chinnadas
COPY /home/jenkins/workspace/docker/web/target/*.war /usr/local/tomcat/webapps/*.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
