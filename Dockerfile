FROM tomcat:8.5.35-jre10
ENV CATALINA_HOME ~/Tomcat
ENV PATH $CATALINA_HOME/bin:$PATH
ADD target/sampleapp.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD chmod +x /usr/local/tomcat/bin/catalina.sh
CMD ["catalina.sh", "run"]
