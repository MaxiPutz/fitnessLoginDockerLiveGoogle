# Use the official Java 17 base image
FROM openjdk:17-jdk

# Copy the Spring Boot application JAR file into the container
COPY fitness_app_spring.jar /app/app.jar

# Expose the application port
EXPOSE 8080

# Start the Java application
CMD ["java", "-jar", "/app/app.jar"]
