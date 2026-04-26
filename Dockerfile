FROM maven:3.9.9-eclipse-temurin-21

WORKDIR /app

COPY pom.xml /app/pom.xml
COPY src /app/srccm

RUN mvn clean install

CMD ["ls"]

#FROM openjdk:25-rc
#FROM openjdk:21
#WORKDIR /app
#COPY . /app
#CMD["ls"]
#CMD ["mvnw","clean","install"]
#CMD ["java","--version"]