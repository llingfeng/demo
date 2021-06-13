FROM java:8

COPY ./target/*.jar /app.jar

EXPOSE 9527

ENTRYPOINT ["sh","-c","java -jar /app.jar"]
