FROM adoptopenjdk:11-jre-hotspot

RUN apt-get update && apt-get install -y unzip wget && rm -rf /var/lib/apt/lists/*

RUN mkdir structurizr-cli \
    && cd structurizr-cli \
    && wget -O structurizr-cli.zip https://github.com/structurizr/cli/releases/download/v1.27.0/structurizr-cli-1.27.0.zip \
    && unzip structurizr-cli.zip \
    && rm structurizr-cli.zip

RUN wget -O plantuml.jar https://github.com/plantuml/plantuml/releases/download/v1.2023.2/plantuml.jar

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
