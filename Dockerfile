FROM java:8

COPY ./target/*.jar /app.jar

EXPOSE 5000

ENTRYPOINT ["sh","-c","java -jar /app.jar"]
