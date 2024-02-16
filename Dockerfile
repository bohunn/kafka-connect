FROM quay.io/strimzi/kafka:${STRIMZI_VERSION}-kafka-${KAFKA_VERSION}

#COPY plugins
COPY ./plugins  /usr/share/java

USER 1001