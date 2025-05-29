output "customers_table_name" {
  description = "Name of the Customers table"
  value       = aws_dynamodb_table.customers.name
}

output "products_table_name" {
  description = "Name of the Products table"
  value       = aws_dynamodb_table.products.name
}

output "orders_table_name" {
  description = "Name of the Orders table"
  value       = aws_dynamodb_table.orders.name
}
