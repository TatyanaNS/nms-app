##
## Build stage
##
#FROM maven:3.8.2-jdk-11 AS build
#COPY . .
#RUN mvn clean package -Pprod -DskipTests
#
##
## Package stage
##
#FROM openjdk:11-jdk-slim
#COPY --from=build /target/JavaDev-Notes-0.0.1-SNAPSHOT.jar JavaDev-Notes.jar
## ENV PORT=9999
#EXPOSE 9999
#ENTRYPOINT ["java","-jar","JavaDev-Notes.jar"]
FROM openjdk:11

MAINTAINER Novikova Tatyana

ENV TZ=Europe/Kiev \
    DB_USER_NAME=$DB_USER_NAME \
    DB_PASSWORD=$DB_PASSWORD \
    URL=$URL

COPY target/JavaDev-Notes*.jar JavaDev-Notes.jar

ENTRYPOINT ["java", "-jar", "JavaDev-Notes.jar"]