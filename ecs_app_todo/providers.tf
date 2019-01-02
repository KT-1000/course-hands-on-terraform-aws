provider "aws" {
  region  = "${var.region}"
  version = "1.31"
}

provider "template" {
  version = "1.0.0"
}

terraform {
  required_version = ">= 0.11.11"

  backend "s3" {
    bucket  = "katie-infrastructure-development-us-east-1"
    key     = "test/ecs_app_todo"
    region  = "us-east-1"
    encrypt = "true"
  }
}
