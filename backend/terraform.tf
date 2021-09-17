terraform {
  backend "s3" {
    bucket = "e-mobility-terraform-remote-state"
    key = "e-mobility"
    region = "eu-central-1"
    role_arn = "arn:aws:iam::718665970908:role/e-mobility-terraform"
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
