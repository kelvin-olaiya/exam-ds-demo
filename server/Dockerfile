FROM eclipse-temurin:25
WORKDIR /home
ADD alchemist.jar .
COPY server/server-config.yml .
COPY distribution-config.yml .
COPY server/startup.sh .
ENTRYPOINT [ "./startup.sh" ]
