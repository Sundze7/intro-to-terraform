resource "aws_dynamodb_table" "users" {
  name = "users"
  hash_key = "UserID"
  billing_mode = "PAY_PER_REQUEST"
  attribute {
    name = "UserID"
    type = "S"
  }

  tags = local.common_tags
}