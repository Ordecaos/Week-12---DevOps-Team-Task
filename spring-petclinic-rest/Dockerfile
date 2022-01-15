FROM myounis789/backend:latest AS build-stage
COPY . /build
WORKDIR /build
RUN mvn clean package -DskipTests
FROM java:8
WORKDIR /opt/app
COPY --from=build-stage /build/target/*.jar app.jar
EXPOSE 9966
ENTRYPOINT ["/usr/bin/java", "-jar", "app.jar"]