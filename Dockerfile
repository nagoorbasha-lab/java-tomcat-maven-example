# Use an official Java runtime as a parent image
FROM openjdk:11-jdk-slim

# Set the working directory to /app
WORKDIR /app

# Copy the application JAR file to the container
COPY target/**/*.war /app

# Expose the port that the application listens on
EXPOSE 8080

# Set the default command to run the application when the container starts
CMD ["java", "-jar", "**/*.war"]
