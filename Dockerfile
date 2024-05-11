# Use a base image with Java and Tomcat
FROM tomcat:latest

# Set environment variables
ENV CATALINA_HOME /usr/local/tomcat
ENV JAVA_OPTS "-Dfile.encoding=UTF-8 -Xmx512m -XX:MaxPermSize=256m"

# Copy your WAR file (containing JSP files) into the Tomcat webapps directory
COPY your-application.war $CATALINA_HOME/webapps/

# Expose the Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]

