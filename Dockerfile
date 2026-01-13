FROM docker.io/eclipse-temurin:25-jre-ubi10-minimal

WORKDIR /data/hytale/

COPY ./assets .
COPY ./boot.sh .
RUN chmod +x ./boot.sh

CMD ["./boot.sh"]
