FROM anapsix/alpine-java
MAINTAINER rohitgit7
COPY helloworld-0.0.1-SNAPSHOT.jar /home/helloworld-0.0.1-SNAPSHOT.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/home/helloworld-0.0.1-SNAPSHOT.jar"]
