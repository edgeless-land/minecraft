FROM sapmachine:17

RUN mkdir /app

ADD ./server /app/server

WORKDIR /app/server

EXPOSE 25565

ENTRYPOINT ["java", "-jar", "server.jar"]