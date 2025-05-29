variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "us-east-1"
}

variable "read_capacity" {
  description = "DynamoDB read capacity units (for PROVISIONED billing)."
  type        = number
  default     = 5
}

variable "write_capacity" {
  description = "DynamoDB write capacity units (for PROVISIONED billing)."
  type        = number
  default     = 5
}
