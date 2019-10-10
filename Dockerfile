FROM layershop.dangdang.com/cnlab/openjdk:8u212-jdk-alpine

# Copy the jar to the production image from the builder stage.
COPY ./target/helloworld-*.jar /helloworld.jar

# Run the web service on container startup.
CMD ["java","-Djava.security.egd=file:/dev/./urandom","-Dserver.port=8080","-jar","/helloworld.jar"]
