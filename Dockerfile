FROM sapmachine:17

RUN mkdir /app

ADD ./server /app/server
ADD https://api.papermc.io/v2/projects/paper/versions/1.19.2/builds/300/downloads/paper-1.19.2-300.jar /app/server/server.jar

WORKDIR /app/server

# Java
EXPOSE 25565
# Bedrock
EXPOSE 19132

# Dynmap
EXPOSE 8123

ENTRYPOINT ["java", "-Xmx2G", "-Xms2G", "-jar", "server.jar", "nogui"]
