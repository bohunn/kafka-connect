FROM quay.io/strimzi/kafka:${STRIMZI_VERSION}-kafka-${KAFKA_VERSION}

# Copy plugins to a custom directory
COPY ./plugins /opt/kafka/plugins
COPY ./schema-registry-transfer-smt-0.2.2-20240220.152729-1.jar /opt/kafka/plugins

# Ensure the directory and its contents are owned by the user 1001
USER root
RUN chown -R 1001:1001 /opt/kafka/plugins
USER 1001