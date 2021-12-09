#!/bin/bash

echo "View dynamodb_topic table"
export AWS_ACCESS_KEY_ID=X
export AWS_SECRET_ACCESS_KEY=X
aws dynamodb scan --table-name dynamodb_topic --endpoint-url http://localhost:8042 --region ap-south-1
