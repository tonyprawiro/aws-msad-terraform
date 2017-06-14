#
# Active Directory writer
#

resource "aws_instance" "vm_adwriter" {
	disable_api_termination = "${var.vm_adwriter_disable_api_termination}"
	instance_type = "${var.vm_adwriter_instance_type}"
	ami = "${var.vm_adwriter_image}"
	iam_instance_profile = "${aws_iam_instance_profile.instance_profile_adwriter.name}"
	subnet_id = "${aws_subnet.subnet_dmz_az1.id}"
	vpc_security_group_ids = [
		"${aws_security_group.secgroup_adwriter.id}"
	]
	root_block_device {
		volume_type = "gp2"
		volume_size = "${var.vm_adwriter_disk_size}"
		delete_on_termination = true
	}
	monitoring = true
	tags {
		Name = "ADWRITER"
	}
}