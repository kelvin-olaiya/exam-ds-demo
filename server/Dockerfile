FROM eclipse-temurin:21
WORKDIR /home
ADD alchemist.jar .
COPY server/server-config.yml .
COPY distribution-config.yml .
COPY server/startup.sh .
ENTRYPOINT [ "./startup.sh" ]
