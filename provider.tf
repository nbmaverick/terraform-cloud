provider "aws" {
  region = "eu-west-1"
}

terraform {
  backend "s3" {
    bucket             = "bucket-for-s3backendmaverick"
    dynamodb_table = "state-lock"
    key                = "global/mystatefile/terraform.tfstate"
    region             = "eu-west-1"
    encrypt            = true
  }
}
