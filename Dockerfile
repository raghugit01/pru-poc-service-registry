#cmd : docker build -t service-registry .
FROM eclipse-temurin:8-jdk-alpine
EXPOSE 8761
VOLUME /tmp
COPY target/*.jar service-registry.jar
ENTRYPOINT ["java","-jar","/service-registry.jar"]