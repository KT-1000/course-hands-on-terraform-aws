provider "aws" {
  region  = "${var.region}"
  version = "1.31"
}

provider "template" {
  version = "1.0.0"
}

terraform {
  required_version = ">= 0.11.7"

  backend "s3" {
    bucket  = "katie-infrastructure-development-us-east-1"
    key     = "test/vpc"
    region  = "us-east-1"
    encrypt = "true"
  }
}
