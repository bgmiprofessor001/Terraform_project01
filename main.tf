provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
ami = "ami-03753afda9b8ba740"
instance_type = "t2.large"
}
