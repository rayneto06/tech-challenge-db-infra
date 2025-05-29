output "customers_table_name" {
  description = "DynamoDB table name for Customers"
  value       = aws_dynamodb_table.customers.name
}

output "products_table_name" {
  description = "DynamoDB table name for Products"
  value       = aws_dynamodb_table.products.name
}

output "orders_table_name" {
  description = "DynamoDB table name for Orders"
  value       = aws_dynamodb_table.orders.name
}
