provider "aws" {
  access_key = "${var.provider_aws_access_key}"
  secret_key = "${var.provider_aws_secret_key}"
  region     = "${var.provider_aws_zone}"
}
