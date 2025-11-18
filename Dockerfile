# Etapa de construcción
FROM maven:3.9.6-eclipse-temurin-17 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# Etapa final
FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar

# ENTRYPOINT para ejecutar el JAR y permitir parámetros
ENTRYPOINT ["java", "-jar", "app.jar"]

# CMD opcional (puedes dejarlo vacío o con valores por defecto)
CMD []
