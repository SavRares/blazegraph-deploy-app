# Use official OpenJDK image as a base
FROM openjdk:8-jdk-alpine

# Set working directory
WORKDIR /opt

# Download Blazegraph release
RUN wget https://github.com/blazegraph/database/releases/download/BLAZEGRAPH_2_1_6_RC/blazegraph.war -O blazegraph.war

# Expose Blazegraph default port
EXPOSE 9999

# Run Blazegraph
ENTRYPOINT ["java", "-jar", "blazegraph.war"]
