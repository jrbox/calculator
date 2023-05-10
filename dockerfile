# Création d'une image pour la construction de l'artefact .jar
FROM maven:3.8.6-eclipse-temurin-17 AS build
# Equivalent de cd. Permet de definir le repertoire de travail dans le container
WORKDIR /home/source/java
# Copie du fichier pom.xml dans le repertoire de travail
COPY . .

# Construction de l'artefact .jar
RUN mvn clean package

# Création de l'image de production
FROM openjdk:17-ea-17-slim-buster
# Copie de l'artefact .jar depuis le container de build
COPY --from=build /home/source/java/target/calculator-0.0.1-SNAPSHOT.jar  app.jar

CMD ["java", "-jar", "app.jar"]