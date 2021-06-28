resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "TestTable"
  billing_mode   = "PROVISIONED"
  read_capacity  = 1
  write_capacity = 1
  hash_key       = "UserId"
  range_key      = "TestingRK"

  attribute {
    name = "UserId"
    type = "S"
  }

  attribute {
    name = "TestingRK"
    type = "S"
  }

  ttl {
    attribute_name = "TimeToExist"
    enabled        = true
  }


  tags = {
    Name        = "dynamodb-test"
    Environment = "dev"
  }
}