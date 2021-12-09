#!/bin/bash

echo "Sending messages to topic dynamodb_topic"
seq -f "{\"f1\": \"value%g\"}" 10 | docker exec -i schema-registry kafka-avro-console-producer --broker-list kafka:9092 --property schema.registry.url=http://schema-registry:8081 --topic dynamodb_topic --property value.schema='{"type":"record","name":"myrecord","fields":[{"name":"f1","type":"string"}]}'
