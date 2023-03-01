##############################################################################
FROM openjdk:11
MAINTAINER Novikova Tatyana
ENV TZ=Europe/Kiev
COPY target/JavaDev-Notes*.jar JavaDev-Notes.jar
EXPOSE 9999
ENTRYPOINT ["java","-jar","JavaDev-Notes.jar"]