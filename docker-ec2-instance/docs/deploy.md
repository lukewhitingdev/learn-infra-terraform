# How to deploy

1. Setup `terraform.tfvars` or env vars for terraform variables following the outline in `variables.tf`
2. Change `install_docker.sh` if you wish to run other code on startup of EC2's
3. Run `terraform plan`
4. Run `terraform apply`
5. SSH using the `ec2_dns` output after `terraform apply`
6. Run `docker ps`
7. Run `docker run hello-world` to verify docker installation

# Troubleshooting
Sometimes when you connect to the ec2 instance you will need to run `newgrp docker` to refresh your perms