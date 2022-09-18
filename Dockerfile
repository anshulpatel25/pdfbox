FROM openjdk:jdk

ARG PDFBOX_VERSION=2.0.26

RUN useradd -ms /bin/bash pdfbox

USER pdfbox

RUN curl -L https://dlcdn.apache.org/pdfbox/2.0.26/pdfbox-app-2.0.26.jar \
            -o ~/pdfbox-app.jar \
        && mkdir ~/data

WORKDIR /home/pdfbox/data

VOLUME /home/pdfbox/data

ENTRYPOINT ["java", "-jar", "/home/pdfbox/pdfbox-app.jar"]
