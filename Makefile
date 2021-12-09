up:
	@docker-compose up -d

write-message:
	@sh ./scripts/write_avro_message.sh

view-dynamo-table:
	@sh ./scripts/view_dynamo_table.sh