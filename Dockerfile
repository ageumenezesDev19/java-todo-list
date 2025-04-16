FROM ubuntu:latest AS build

RUN apt-get update
RUN apt-get install openjdk-17-jdk -y

COPY . .

RUN apt-get install maven -y
RUN mvn clean install

FROM openjdk:17-jdk-slim
EXPOSE 8080
COPY --from=build target/todolist-0.0.1-SNAPSHOT.jar app.jar
# COPY --from=build /target/todolist-1.0.0.jar app.jar

ENTRYPOINT [ "java", "-jar", "app.jar" ]

# # build
# FROM maven:3.8.6-eclipse-temurin-17 AS build
# WORKDIR /app
# COPY pom.xml .
# COPY src ./src
# RUN mvn clean package -DskipTests

# # runtime
# FROM eclipse-temurin:17-jre-alpine
# WORKDIR /app
# COPY --from=build /app/target/todolist-0.0.1-SNAPSHOT.jar app.jar
# EXPOSE 8080
# ENTRYPOINT ["java", "-jar", "app.jar"]