FROM openjdk:8

WORKDIR /app

COPY build/libs/*.war app-ps-sre.war

EXPOSE 8080

CMD java $JAVA_OPTS -Dgrails.env=prod  -jar app-ps-sre.war
