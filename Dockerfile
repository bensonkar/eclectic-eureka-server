
#FROM  maven:3.6-openjdk-8
#USER root
#WORKDIR /eureka-service
#COPY . .
#RUN mvn package
#
#FROM openjdk:8-jdk-alpine
#WORKDIR /eureka-service
#ARG JAR_FILE=/eureka-service/target/*.jar
#COPY --from=0 ${JAR_FILE} eureka.jar
#ENTRYPOINT ["java","-jar","eureka.jar"]

FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} eureka.jar
ENTRYPOINT ["java","-jar","/eureka.jar"]