resource "aws_internet_gateway" "app" {
	vpc_id = aws_vpc.main.id
	tags = {
		Name = "EC2 Docker Internet Gateway"
	}
}