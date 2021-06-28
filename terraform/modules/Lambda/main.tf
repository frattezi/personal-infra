resource "aws_lambda_function" "dynamo-handler" {
  function_name = "database-handler"

  # The zip containing the Lambda function
  filename = "${path.module}/main.py.zip"

  runtime = "python3.8"
  handler = "main.lambda_handler"
  timeout = 10

  role = var.lambda_iam_role_arn

  environment {
    variables = {
      region = "us-east-1",
    }
  }
}