FROM adoptopenjdk:11-jre-hotspot

RUN apt-get update && apt-get install -y wget && rm -rf /var/lib/apt/lists/*

RUN wget -O structurizr-cli.tar.gz https://github.com/structurizr/cli/archive/refs/tags/v1.27.0.tar.gz
RUN tar -xzvf structurizr-cli.tar.gz && mv /cli-1.27.0 /structurizr-cli

RUN wget -O plantuml.jar https://github.com/plantuml/plantuml/releases/download/v1.2023.2/plantuml.jar

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
