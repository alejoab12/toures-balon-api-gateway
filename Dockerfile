FROM openjdk:14.0-jdk-slim
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
EXPOSE 8090
ENTRYPOINT ["java","-jar","-Dspring.profiles.active=prod","/app.jar"]
