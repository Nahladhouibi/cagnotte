# Use a minimal base image with Java
FROM openjdk:17-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the entire target directory into the container at /app
COPY target/ /app/

# Expose the port that your Spring Boot application will run on
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java", "-jar", "/app/CrowdfundingApplication.jar"]
