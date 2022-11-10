FROM openjdk:11

ARG JAR_FILE=./build/libs/kupass-eureka-0.0.1-SNAPSHOT.jar

COPY ${JAR_FILE} app.jar

EXPOSE 8761

ENV TZ Asia/Seoul

ENTRYPOINT ["java", "-jar", "app.jar"]