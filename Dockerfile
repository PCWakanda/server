# Use a base image of Java 21
FROM openjdk:21-jdk-slim

# Copy the JAR file to the container
COPY target/server-0.0.1-SNAPSHOT.jar /app/eureka-server.jar

# Define the port on which the application will run
EXPOSE 8761

# Command to run the application
ENTRYPOINT ["java", "-jar", "/app/eureka-server.jar"]