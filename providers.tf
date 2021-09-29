provider "aws" {
  region = "eu-central-1"

  assume_role {
    role_arn = "arn:aws:iam::718665970908:role/pw-dev-terraform-deployer"
  }
}
# This provider is used to create resource that must be strictly in eu-east-1 region, e.g. cloudfront certificates
provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"

  assume_role {
    role_arn = "arn:aws:iam::718665970908:role/pw-dev-terraform-deployer"
  }
}
