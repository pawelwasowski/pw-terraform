terraform {
  backend "s3" {
    bucket = "e-mobility-terraform-remote-state"
    key = "e-mobility"
    region = "eu-central-1"
    role_arn = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/e-mobility-terraform-state-manager"
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
