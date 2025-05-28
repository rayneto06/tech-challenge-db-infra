output "db_endpoint" {
  description = "RDS instance endpoint"
  value       = aws_db_instance.this.endpoint
}

output "db_port" {
  description = "RDS instance port"
  value       = aws_db_instance.this.port
}
