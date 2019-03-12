FROM docker:latest
COPY /var/jenkins_home/workspace/maventest-pipeline/target/maventest-1.0-SNAPSHOT.jar .
RUN echo "hello from docker"
CMD java -jar maventest-1.0-SNAPSHOT.jar

