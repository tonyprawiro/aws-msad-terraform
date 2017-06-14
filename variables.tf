# AWS credentials
variable "provider_aws_access_key" { }
variable "provider_aws_secret_key" { }
variable "provider_aws_zone" { }

# Availability zones
variable "az1" {}
variable "az2" {}

# VPC
variable "vpc_cidr" {}

variable "subnet_dmz_cidr_az1" {}
variable "subnet_dmz_cidr_az2" {}

variable "subnet_priv_cidr_az1" {}
variable "subnet_priv_cidr_az2" {}

# Access
variable "trusted_ip_address" {}


# Directory Service
variable "dir_domain_name" {}
variable "dir_admin_password" {}
variable "dir_type" {}
variable "dir_computer_ou" {}

# AD Writer machine
variable "vm_adwriter_disable_api_termination" {}
variable "vm_adwriter_instance_type" {}
variable "vm_adwriter_image" {}
variable "vm_adwriter_disk_size" {}
