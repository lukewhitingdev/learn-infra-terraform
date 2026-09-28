resource "aws_key_pair" "ssh" {
	key_name = "ssh-key"
	public_key = var.ssh_public_key
}

resource "aws_instance" "app" {
	ami = var.instance_ami
	instance_type  = var.instance_type
	availability_zone = var.availability_zone
	security_groups = [aws_security_group.app.id]
	associate_public_ip_address = true
	subnet_id = aws_subnet.app.id

	key_name = "ssh-key"

	user_data = templatefile("${path.module}/install_docker.sh", {
		time_zone = "America/New_York"
	})

	tags = {
		Name = "my_app_API"
	}
}