FROM docker:latest
COPY /var/lib/docker/volumes/jenkins_home/_data/workspace/maventest-pipeline/target .
RUN echo "hello from docker"
CMD java -jar maventest-1.0-SNAPSHOT.jar

