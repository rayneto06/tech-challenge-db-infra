# Customers table
resource "aws_dynamodb_table" "customers" {
  name           = "Customers"
  billing_mode   = "PROVISIONED"
  read_capacity  = var.read_capacity
  write_capacity = var.write_capacity
  hash_key       = "CustomerId"

  attribute {
    name = "CustomerId"
    type = "S"
  }

  attribute {
    name = "Email"
    type = "S"
  }

  # secondary index on email for lookups
  global_secondary_index {
    name               = "EmailIndex"
    hash_key           = "Email"
    projection_type    = "ALL"
    read_capacity      = var.read_capacity
    write_capacity     = var.write_capacity
  }

  tags = {
    Service = "TechChallenge"
    Table   = "Customers"
  }
}

# Products table
resource "aws_dynamodb_table" "products" {
  name           = "Products"
  billing_mode   = "PROVISIONED"
  read_capacity  = var.read_capacity
  write_capacity = var.write_capacity
  hash_key       = "ProductId"

  attribute {
    name = "ProductId"
    type = "S"
  }

  attribute {
    name = "Category"
    type = "S"
  }

  # index on category
  global_secondary_index {
    name               = "CategoryIndex"
    hash_key           = "Category"
    projection_type    = "ALL"
    read_capacity      = var.read_capacity
    write_capacity     = var.write_capacity
  }

  tags = {
    Service = "TechChallenge"
    Table   = "Products"
  }
}

# Orders table
resource "aws_dynamodb_table" "orders" {
  name           = "Orders"
  billing_mode   = "PROVISIONED"
  read_capacity  = var.read_capacity
  write_capacity = var.write_capacity
  hash_key       = "OrderId"
  range_key      = "CreatedAt"    # so we can sort by creation time

  attribute {
    name = "OrderId"
    type = "S"
  }

  attribute {
    name = "CreatedAt"
    type = "S"
  }

  attribute {
    name = "Status"
    type = "S"
  }

  # index on status to list by status
  global_secondary_index {
    name               = "StatusIndex"
    hash_key           = "Status"
    projection_type    = "ALL"
    read_capacity      = var.read_capacity
    write_capacity     = var.write_capacity
  }

  tags = {
    Service = "TechChallenge"
    Table   = "Orders"
  }
}
