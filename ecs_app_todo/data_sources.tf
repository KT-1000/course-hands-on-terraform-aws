data "terraform_remote_state" "rds" {
  backend = "s3"

  config {
    bucket = "katie-infrastructure-development-${var.region}"
    key    = "test/rds"
    region = "${var.region}"
  }
}
