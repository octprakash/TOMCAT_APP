FROM javaweb_base:latest
EXPOSE 8080
WORKDIR /opt/myapplication/
COPY . .
RUN mvn clean install && cp ./target/java-tomcat-maven-*.war /opt/tomcat/webapps/java-tomcat-maven-example.war
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
