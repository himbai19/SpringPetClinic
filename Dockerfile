FROM openjdk:1.8.0
EXPOSE 8080
ADD target/spring-petclinic-2.1.0.BUILD-SNAPSHOT.jar spring-petclinic-2.1.0.BUILD-SNAPSHOT.jar
ENTRYPOINT {"java","-jar","/spring-petclinic-2.1.0.BUILD-SNAPSHOT.jar"}
