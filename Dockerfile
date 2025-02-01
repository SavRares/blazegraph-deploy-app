# Use official OpenJDK image as a base
FROM openjdk:8-jdk-alpine

# Set working directory
WORKDIR /opt

# Download Blazegraph release
RUN wget https://github.com/blazegraph/database/releases/download/v2.1.5/blazegraph-2.1.5.war -O blazegraph.war

# Expose Blazegraph default port
EXPOSE 9999

# Run Blazegraph
ENTRYPOINT ["java", "-jar", "blazegraph.war"]
