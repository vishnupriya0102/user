# Use Maven to build the application
FROM maven:3.8.5-openjdk-17 AS build
COPY . .
RUN mvn clean package -DskipTests

# Use OpenJDK to run the application
FROM openjdk:17.0.1-jdk-slim
COPY --from=build /target/user1-0.0.1-SNAPSHOT.jar user1.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "demo.jar"]