# Use a base image with OpenJDK
FROM openjdk:17-jdk-alpine
# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the EC2 instance's home directory into the container's working directory
COPY target/*.jar app.jar

# Expose the port your application is listening on (if applicable)
EXPOSE 8080

# Command to run your application when the container starts
CMD ["java", "-jar", "/app.jar"]

