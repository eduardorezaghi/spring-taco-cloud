# Use the official Maven image as the base image
FROM maven:3.9.7-eclipse-temurin-17-alpine AS build

# Set the working directory inside the container
WORKDIR /app

# Copy only the necessary files for building the project (pom.xml)
COPY pom.xml .

# Download project dependencies (this can be cached for faster subsequent builds)
RUN mvn dependency:go-offline

# Copy the rest of the project source code
COPY src ./src

# Build the Spring Boot application using Maven
RUN mvn package -DskipTests

# Use the official OpenJDK image for the runtime environment
FROM openjdk:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the build stage to the runtime stage
COPY --from=build /app/target/taco-cloud-0.0.1-SNAPSHOT.jar app.jar

# Set the entry point for the container to run the Spring Boot application
ENTRYPOINT ["java","-jar","app.jar"]

