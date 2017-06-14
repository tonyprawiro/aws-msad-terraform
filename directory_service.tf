resource "aws_directory_service_directory" "myapp_ad" {
	name     = "${var.dir_domain_name}"
	password = "${var.dir_admin_password}"
	size     = "Large"
	vpc_settings {
		vpc_id = "${aws_vpc.vpc_myapp.id}"
		subnet_ids = [
			"${aws_subnet.subnet_priv_az1.id}",
			"${aws_subnet.subnet_priv_az2.id}"
		]
	}
	type     = "${var.dir_type}"
}
