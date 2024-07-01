# Use an official JDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the JAR file to the docker image
COPY target/gs-maven-0.1.0.jar /app/gs-maven-0.1.0.jar

# Run the application
CMD ["java", "-jar", "/app/gs-maven-0.1.0.jar"]
