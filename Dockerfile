FROM openjdk:11

MAINTAINER Novikova Tatyana

ENV TZ=Europe/Kiev \
    URL=$URL \
    USER_NAME=$USER_NAME \
    DB_PASSWORD=$DB_PASSWORD

COPY target/JavaDev-Notes*.jar JavaDev-Notes.jar

ENTRYPOINT ["java", "-jar", "JavaDev-Notes.jar"]