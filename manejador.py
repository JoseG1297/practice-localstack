def handler(event, context):
    # Print the content of the file
    print("Received event: " + str(event))

    return {
        'statusCode': 200,
        'body': "Hello from Lambda!"
    }