# Use an official JDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the JAR file to the docker image
COPY target/*.jar /app/app.jar

# Run the application
CMD ["java", "-jar", "/app/app.jar"]
