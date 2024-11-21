provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-03753afda9b8ba740"
instance_type = "t2.medium"
key_name = "new1"
vpc_security_group_ids = ["sg-04ad923cb7e7945b9"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["Dev", "Test", "Monitoring", "Ansible"]
}
