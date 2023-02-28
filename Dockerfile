#
# Build stage
#
FROM maven:3.8.3-jdk-11 AS build
MAINTAINER Novikova Tatyana
ENV TZ=Europe/Kiev \
    URL=$URL \
    USER_NAME=$USER_NAME \
    DB_PASSWORD=$DB_PASSWORD
COPY . .
RUN mvn clean package -Pprod -DskipTests

#
# Package stage
#
FROM openjdk:11-jdk-slim
COPY --from=build target/JavaDev-Notes-0.0.1-SNAPSHOT.jar JavaDev-Notes.jar
# ENV PORT=9999
EXPOSE 9999 9999
ENTRYPOINT ["java","-jar","JavaDev-Notes.jar"]