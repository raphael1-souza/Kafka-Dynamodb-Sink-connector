#!/bin/bash

curl -i -X POST \
    -H "Accept:application/json" \
    -H  "Content-Type:application/json" \
    http://localhost:8083/connectors/ -d '
    {
        "name": "dynamodb-sink",
        "config": {
            "connector.class": "io.confluent.connect.aws.dynamodb.DynamoDbSinkConnector",
            "tasks.max": "1",
            "aws.dynamodb.region": "ap-south-1",
            "topics": "dynamodb_topic",
            "aws.dynamodb.proxy.url": "http://dynamodb:8000",
            "confluent.topic.bootstrap.servers": "PLAINTEXT://kafka:9092",
            "confluent.topic.replication.factor": "1",
            "name": "dynamodb-sink"
        }
    }
    '
