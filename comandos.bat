@echo off
echo "Ejecutando comandos ..."
awslocal dynamodb create-table --table-name usuarios --attribute-definitions AttributeName=usuarioId,AttributeType=S --key-schema AttributeName=usuarioId,KeyType=HASH --provisioned-throughput ReadCapacityUnits=1,WriteCapacityUnits=1 
echo "Tabla usuarios creada."
