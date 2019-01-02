# Remote state
data "terraform_remote_state" "ecs_cluster" {
  backend = "s3"

  config {
    bucket = "katie-infrastructure-development-${var.region}"
    key    = "test/ecs_cluster"
    region = "${var.region}"
  }
}

data "terraform_remote_state" "vpc" {
  backend = "s3"

  config {
    bucket = "katie-infrastructure-development-${var.region}"
    key    = "test/vpc"
    region = "${var.region}"
  }
}
