provider "aws" {
  region = "eu-west-1"
}
terraform {  
  backend "s3" {
    bucket = "drift-test-bucket"
    key    = "terraform.tfstate"
    region = "eu-west-1"
  }
}

module "vpc" {
  source  = "clouddrove/vpc/aws"
  version = "1.3.0"

  name        = "vpc"
  environment = "test"
  label_order = ["name", "environment"]

  cidr_block = "10.0.0.0/16"
}