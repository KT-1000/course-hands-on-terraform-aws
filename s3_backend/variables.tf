variable "environment" {
  type    = "string"
  default = "development"
}

variable "s3_bucket_prefix" {
  description = "Prefix of the s3 bucket serving as terraform backend"
  type        = "string"
}

variable "s3_region" {
  type = "string"
}

locals {
  s3_tags = {
    created_by  = "terraform"
    environment = "${var.environment}"
  }
}
