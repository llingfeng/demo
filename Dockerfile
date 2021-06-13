FROM java:8

RUN echo $PWD

COPY **/*.jar /app.jar

EXPOSE 5000

ENTRYPOINT ["sh","-c","java -Dspring.profiles.active=dev -jar /app.jar ss"]
