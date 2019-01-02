# Remote state
data "terraform_remote_state" "vpc" {
  backend = "s3"

  config {
    bucket = "katie-infrastructure-development-${var.region}"
    key    = "test/vpc"
    region = "${var.region}"
  }
}
