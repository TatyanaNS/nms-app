##############################################################################
FROM openjdk:11
MAINTAINER Novikova Tatyana
ENV TZ=Europe/Kiev
COPY --from=build /target/JavaDev-Notes-0.0.1-SNAPSHOT.jar JavaDev-Notes.jar
EXPOSE 9999
ENTRYPOINT ["java","-jar","JavaDev-Notes.jar"]