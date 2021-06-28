##############
# Lambda IAM #
##############

# IAM role which dictates what other AWS services the Lambda function
# may access.
resource "aws_iam_role" "database_handler_role" {
  name = "database-handler-role"

  assume_role_policy = file("${path.module}/policies/lambda_assume_role.json")
}

resource "aws_iam_policy" "database_handler_policy" {
  name        = "database-handler-policy"
  description = ""
  policy      = file("${path.module}/policies/allow_dynamo_operation.json")
}

resource "aws_iam_role_policy_attachment" "database_handler_attach" {
  role       = aws_iam_role.database_handler_role.name
  policy_arn = aws_iam_policy.database_handler_policy.arn
}