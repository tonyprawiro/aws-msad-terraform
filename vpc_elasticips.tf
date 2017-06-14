#
# ElasticIP for NAT gateway in AZ1
#

resource "aws_eip" "eip_natgw_az1" {
	vpc = true
}

#
# ElasticIP for NAT gateway in AZ2
#

resource "aws_eip" "eip_natgw_az2" {
	vpc = true
}
