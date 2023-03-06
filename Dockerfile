FROM openjdk:11
MAINTAINER Novikova Tatyana
ENV TZ=Europe/Kiev \
    URL=$URL \
    USER_NAME=$USER_NAME \
    DB_PASSWORD=$DB_PASSWORD
EXPOSE 9999
COPY /target/JavaDev-Notes-0.0.1-SNAPSHOT.jar JavaDev-Notes.jar
ENTRYPOINT ["java", "-jar", "JavaDev-Notes.jar"]