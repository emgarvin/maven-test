FROM openjdk:latest
VOLUME /var/jenkins_home
COPY target/maventest-1.0-SNAPSHOT.jar .
RUN echo "hello from docker"
CMD java -jar maventest-1.0-SNAPSHOT.jar

