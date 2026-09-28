resource "aws_security_group" "app" {
	name = "SSH Access"
	vpc_id = aws_vpc.main.id
}

resource "aws_security_group_rule" "allow_all_outbound" {
	type = "egress"
	security_group_id = aws_security_group.app.id

	cidr_blocks = [
		"0.0.0.0/0"
	]

	from_port = 0 
	to_port = 0 

	protocol = "-1"
}

resource "aws_security_group_rule" "allow_ssh_ingress" {
	type = "ingress"
	security_group_id = aws_security_group.app.id

	cidr_blocks = [
		"0.0.0.0/0"
	]

	from_port = 22
	to_port = 22
	protocol = "tcp"
}