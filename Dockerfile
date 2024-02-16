FROM quay.io/strimzi/kafka:${STRIMZI_VERSION}-kafka-${KAFKA_VERSION}-a

# Copy plugins to a custom directory
COPY ./plugins /opt/kafka/plugins

# Ensure the directory and its contents are owned by the user 1001
USER root
RUN chown -R 1001:1001 /opt/kafka/plugins
USER 1001