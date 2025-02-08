# Étape 1: Construire l'application
FROM eclipse-temurin:17 AS build

WORKDIR /app

# Copier le code source
COPY . .

# Construire le fichier .jar
RUN ./mvnw clean package -DskipTests

# Étape 2: Exécuter l'application
FROM eclipse-temurin:17

WORKDIR /app

# Copier le .jar généré
COPY --from=build /app/target/*.jar app.jar

# Exposer le port 8080
EXPOSE 8080

# Démarrer l'application
ENTRYPOINT ["java", "-jar", "app.jar"]
