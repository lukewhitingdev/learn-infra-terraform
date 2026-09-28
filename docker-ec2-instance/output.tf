output "ec2_ip" {
	value = aws_instance.app.public_ip
}

output "ec2_dns" {
	value = aws_eip.appip.public_dns
}