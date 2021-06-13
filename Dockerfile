FROM java:8

RUN ls /var/jenkins_home/workspace

COPY ./target/*.jar /app.jar

EXPOSE 5000

ENTRYPOINT ["sh","-c","java -Dspring.profiles.active=dev -jar /app.jar ss"]
