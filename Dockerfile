FROM tomcat:8.5.34

LABEL maintainer="Nishanka Donikeni"

COPY ./target/hello-world-war-1.0.0.war /usr/local/tomcat/webapps/hello-world-war-1.0.0.war

EXPOSE 80

CMD ["catalina.sh", "run"]
