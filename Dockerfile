FROM islandora/blazegraph:latest

EXPOSE 9999

CMD ["java", "-server", "-Xmx4g", "-Dbigdata.propertyFile=RWStore.properties", "-jar", "/blazegraph.jar"]
