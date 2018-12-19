#Base image
FROM openjdk:8

MAINTAINER marcelo.cardenas@usach.cl

#Set the working directory for RUN CMD ENTRYPOINT COPY ADD
WORKDIR /opt/app

#OPTIONS USED BY JVM
ENV SPRING_OUTPUT_ANSI_ENABLED=ALWAYS \
	JAVA_DEBUG_PORT=8787 \
	AB_OFF=true \
	JAVA_APP_JAR=app.jar \
	JAVA_APP_DIR=/opt/app \
	JAVA_OPTIONS="-Djava.security.egd=file:/dev/./urandom -Duser.stimezone=America/Santiago -Dhttp.nonProxyHosts=localhost|127.0.0.1|10.*.*.*|192.*.*.*"

#Copy application's jar and rename it
COPY target/guildRecruitment-0.0.1-SNAPSHOT.jar app.jar

#Defaul volume used by Tomcat's logs
VOLUME /tmp

#Expose ports
EXPOSE 9000 9002 8787

#Execute application
ENTRYPOINT java $JAVA_OPTIONS $JAVA_DEBUG_PORT -jar app.jar
