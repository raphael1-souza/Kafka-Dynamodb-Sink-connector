## Objetivo
Realizar testes de forma rápida do Kafka com o [AWS DynamoDB](https://docs.confluent.io/current/connect/kafka-connect-aws-dynamodb/index.html#kconnect-long-aws-dynamodb-sink-connector) sink connector.

## Como executar ?
- Subir o ambiente

    `make up`

    Esse comando irá subir todos os container necessários para a execução do connector

- Configuração e envio de mensagem autómatica de mensagem para o tópico ligado ao connector

    `make write-message`

    Irá enviar 10 mensagem automaticas para o tópico do kafka afim de testa integração

- Visualizar a tabela no dynamo

    `make view-dynamo-table`

    Validar que os eventos que chegam no tópicos estão sendo preenchidos na tabela pelo sink




**OBS:**

Caso deseja visualizaro cluster do kafka utilizamos o akhq que pode ser consultado pelo endereço http://localhost:8080/