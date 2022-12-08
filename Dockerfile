		FROM ubuntu
		RUN apt-get -y update && apt-get -y upgrade
		RUN apt-get -y install openjdk-8-jdk wget
		RUN mkdir /usr/local/tomcat
		RUN wget https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.40/bin/apache-tomcat-8.5.40.tar.gz -O /tmp/apache-tomcat-8.5.40.tar.gz
		RUN cd /tmp&& tar xvfz /tmp/apache-tomcat-8.5.40.tar.gz
		RUN cp -Rv /tmp/apache-tomcat-8.5.40.tar.gz* /usr/local/tomcat/
		COPY target/sampleapp.war /usr/local/tomcat/webapps
		EXPOSE 8080
		CMD /usr/local/tomcat/bin/catalina.sh run
