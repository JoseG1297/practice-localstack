rem awslocal lambda create-function --function-name my-function --runtime python3.8  --handler manejador.handler --zip-file fileb://manejador.zip --role arn:aws:iam::000000000000:role/lambda-role 
awslocal lambda invoke --function-name my-function --payload '{}' response.json
echo "Respuesta de la función Lambda guardada en response.json."