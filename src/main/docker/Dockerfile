#
# The app runs on port 8080 unless configured
# otherwise.
#
# The app can be enabled to pull its
# configuration from a Spring Cloud Config-Server.
#
FROM openjdk:8-jdk-alpine

MAINTAINER Smarter Balanced "opentestsystem.org"

VOLUME ["/tmp"]

COPY ap-item-migration.jar /

RUN apk add --update curl && rm -rf /var/cache/apk/*

RUN apk add --update jq && rm -rf /var/cache/apk/*

ENTRYPOINT ["/usr/bin/java"]

CMD ["-jar", "/ap-item-migration.jar"]
