import json

def lambda_handler(event, context):
    return{

        'statusCode': 200,
        "body": "Welcome to our demo API"
        "headers": {
            "Content-Type": "application/json"
        }
    }