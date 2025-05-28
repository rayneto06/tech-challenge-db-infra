terraform {
  required_providers {
    aws = { source="hashicorp/aws" version="~>5.0" }
  }
}
provider "aws" {
  region = var.aws_region
}

# Use default VPC subnets for the DB subnet group
data "aws_subnets" "default" {
  filter {
    name   = "default-for-az"
    values = ["true"]
  }
}

resource "aws_db_subnet_group" "this" {
  name       = "tc-db-subnets"
  subnet_ids = data.aws_subnets.default.ids
}

resource "aws_db_instance" "this" {
  identifier            = var.db_identifier
  engine                = "mysql"
  engine_version        = "8.0"
  instance_class        = var.instance_class
  name                  = var.db_name
  username              = var.db_username
  password              = var.db_password
  allocated_storage     = var.allocated_storage
  db_subnet_group_name  = aws_db_subnet_group.this.name
  skip_final_snapshot   = true
  publicly_accessible   = false
}
