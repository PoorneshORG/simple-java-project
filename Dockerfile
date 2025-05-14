# Use the official OpenJDK 18 JDK slim image for better compatibility (arm64 support)
FROM openjdk:18-jdk-slim-buster

# Set the maintainer label (optional)
LABEL maintainer="baeldung.com"

# Create a directory for your app (helps with organization)
WORKDIR /app

# Copy the application JAR file from the target folder in your local project to the container
ADD target/springboot-cloudrun-0.0.1-SNAPSHOT.jar app.jar

# Expose the port that the application will run on (Cloud Run default is 8080)
EXPOSE 8080

# Use the ENTRYPOINT directive to start the Java application
ENTRYPOINT ["java", "-jar", "/app/app.jar"]

