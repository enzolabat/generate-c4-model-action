FROM adoptopenjdk:11-jre-hotspot

RUN apt update
RUN apt install -y plantuml

COPY entrypoint.sh /entrypoint.sh
COPY structurizr-cli-1.27.0 /structurizr-cli

ENTRYPOINT ["/entrypoint.sh"]
