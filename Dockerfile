##
## Build stage
##
#FROM maven:3.8.3-jdk-11 AS build
#COPY . .
#RUN mvn clean package -DskipTests
#
##
## Package stage
##
#FROM openjdk:11-jdk-slim
#MAINTAINER Novikova Tatyana
#ENV URL=$URL \
#    USER_NAME=$USER_NAME \
#    DB_PASSWORD=$DB_PASSWORD
##ENV PORT=9999
#EXPOSE 9999 9999
#COPY --from=build /target/JavaDev-Notes-0.0.1-SNAPSHOT.jar JavaDev-Notes.jar
#ENTRYPOINT ["java","-jar","JavaDev-Notes.jar"]

FROM openjdk:11

MAINTAINER Novikova Tatyana

ENV TZ=Europe/Kiev \
    DB_USER_NAME=$DB_USER_NAME \
    DB_PASSWORD=$DB_PASSWORD

COPY target/JavaDev-Notes-0.0.1-SNAPSHOT.jar JavaDev-Notes.jar

ENTRYPOINT ["java", "-jar", "JavaDev-Notes.jar"]