#base-image setup
FROM openjdk:17-jdk-slim
# external variable setup
#ARG port
## expose port
#EXPOSE ${port}
ENV SPRING_PROFILE=stg
#  variable setup
ARG JAR_FILE_PATH=target/*.jar
# copy to app.jar file
COPY ${JAR_FILE_PATH} app.jar
# exec jar file.
ENTRYPOINT ["java", "-Dspring.profiles.active=${SPRING_PROFILE}", "-jar", "app.jar"]