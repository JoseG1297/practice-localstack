@echo off
echo "Ejecutando comandos ..."
REM  awslocal dynamodb create-table --table-name usuarios --attribute-definitions AttributeName=usuarioId,AttributeType=S --key-schema AttributeName=usuarioId,KeyType=HASH --provisioned-throughput ReadCapacityUnits=1,WriteCapacityUnits=1 
echo "Tabla usuarios creada."
set "JSON_FILE=itemsDynamodb.json"
awslocal dynamodb put-item --table-name usuarios --item file://%JSON_FILE%
echo "Items insertados en la tabla usuarios."