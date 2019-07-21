FROM tomcat:8.0
MAINTAINER naresh
COPY docker/web/target/time-tracker-web-0.5.0-SNAPSHOT.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
