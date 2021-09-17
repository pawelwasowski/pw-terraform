terraform {
  backend "s3" {
    bucket = var.terraform-config.bucket
    key = var.terraform-config.bucket-key
    region = var.terraform-config.region
    role_arn = var.terraform-config.role-arn
  }
  required_providers {
    aws = "~> 3.59.0"
    null = "~> 3.0.0"
    random = "~> 3.0.0"
    template = "~> 2.2.0"
    tls = "~> 3.0.0"
  }
  required_version = ">= 1.0.7"
}
data "aws_caller_identity" "current" {}
