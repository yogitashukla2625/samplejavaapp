FROM tomcat:8.5.40
COPY target/sampleapp.war /usr/local/tomcat/webapps
EXPOSE 8080
CMD chmod +x /usr/local/tomcat/bin/catalina.sh
CMD ["catalina.sh", "run"]

