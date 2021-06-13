FROM java:8

COPY ./target/demo-0.0.1-SNAPSHOT.jar /app.jar

EXPOSE 5000

ENTRYPOINT ["sh","-c","java -Dspring.profiles.active=dev -jar /app.jar ss"]
