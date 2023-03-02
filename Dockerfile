#
# Build stage
#
FROM maven:3.8.3-jdk-11 AS build
COPY . .
RUN mvn clean package -DskipTests

##############################################################################
FROM openjdk:11
MAINTAINER Novikova Tatyana
#ENV PORT=9999
EXPOSE 9999
COPY --from=build /target/JavaDev-Notes-0.0.1-SNAPSHOT.jar JavaDev-Notes.jar
ENTRYPOINT ["java","-jar","JavaDev-Notes.jar"]