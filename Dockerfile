FROM tomcat:8-jre8
MAINTAINER chinnadas
COPY //home/jenkins/workspace/docker/web/target/time-tracker-web-0.5.0-SNAPSHOT.war /usr/local/tomcat/webapps/time-tracker-web-0.5.0-SNAPSHOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
