resource "aws_vpc" "main" {
	cidr_block = "10.0.0.0/16"
	enable_dns_hostnames = true
	enable_dns_support = true
	tags = {
	  Name = "EC2 Docker VPC"
	}
}

resource "aws_eip" "appip" {
	instance = aws_instance.app.id
	domain = "vpc"
	tags = {
		Name = "EC2 Docker Elastic IP"
	}
}