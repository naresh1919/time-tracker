FROM tomcat:8.0
MAINTAINER naresh
COPY docker/web/target/*.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
