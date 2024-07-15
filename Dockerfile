# Use an official JDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the Docker image
COPY target/gs-maven-0.1.0.jar /app/app.jar

# Health check to verify application readiness
HEALTHCHECK --interval=30s --timeout=10s --start-period=30s CMD curl -f http://localhost:8080/health || exit 1

# Expose the port that your application listens on
EXPOSE 8080

# Run the application when the container starts
CMD ["java", "-jar", "/app/app.jar"]
