# Use Tomcat as the base image
FROM tomcat:9.0-jdk11-openjdk

# Set the working directory
WORKDIR /usr/local/tomcat/webapps

# Download the Blazegraph WAR file
RUN wget https://github.com/blazegraph/database/releases/download/BLAZEGRAPH_2_1_6_RC/blazegraph.war -O blazegraph.war

# Expose the Blazegraph port
EXPOSE 8080

# Start Tomcat server (default start command for Tomcat)
CMD ["catalina.sh", "run"]
