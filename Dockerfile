FROM tomcat:9.0.45-jdk8-openjdk
WORKDIR /home/app
COPY pom.xml .
COPY src/ ./src/
ADD target/*.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]
