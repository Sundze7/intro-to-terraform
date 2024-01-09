resource "aws_dynamodb_table" "users" {
  name = "users"
  hash_key = "UserID"
  billing_mode = "PAY_PER_REQUEST"
  #primary key
  attribute {
    name = "UserID"
    # S - string
    type = "S"
  }

  tags = local.common_tags
}

resource "aws_dynamodb_table_item" "car_items" {
  table_name = aws_dynamodb_table.users.name
  hash_key = aws_dynamodb_table.users.hash_key

  for_each = {for user in local.users : user.UserID => user}

  item = <<EOT
  {
    "UserID": {"S": "${each.value.UserID}"},
    "Email": {"S": "${each.value.Email}"},
    "Age": {"N": "${each.value.Age}"},
    "Name": {"S": "${each.value.Name}"}      
  }
  EOT
}
