provider "aws" {
  region = "${var.s3_region}"
}

terraform {
  required_version = ">= 0.11.11"

  backend "s3" {
    bucket = "katie-infrastructure-development-us-east-1"
    key = "terraform-backend/v1"
    region = "us-east-1"
    encrypt = "true"
  }
}
