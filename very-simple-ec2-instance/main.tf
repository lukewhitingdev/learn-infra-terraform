provider "aws" {
	region = "eu-west-1"
}

resource "aws_instance" "example" {
	ami = "ami-00114f310a6ca1311"
	instance_type = "t3.micro"
}