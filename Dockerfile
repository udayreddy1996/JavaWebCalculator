# Use an official OpenJDK runtime as the base image
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the WAR file from your local machine to the container
COPY target/webapp-0.2.war /app/webapp-0.2.war

# Expose the ports your application will listen on
EXPOSE 8080

# Command to run your Java application
CMD ["java", "-jar", "webapp-0.2.war"]
