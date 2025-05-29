resource "aws_dynamodb_table" "customers" {
  name         = "Customers"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "cpf"

  attribute {
    name = "cpf"
    type = "S"
  }

  tags = {
    Environment = "dev"
    Project     = "tech-challenge"
  }
}

resource "aws_dynamodb_table" "products" {
  name         = "Products"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "id"

  attribute {
    name = "id"
    type = "S"
  }

  tags = {
    Environment = "dev"
    Project     = "tech-challenge"
  }
}

resource "aws_dynamodb_table" "orders" {
  name         = "Orders"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "orderId"

  attribute {
    name = "orderId"
    type = "S"
  }

  tags = {
    Environment = "dev"
    Project     = "tech-challenge"
  }
}
