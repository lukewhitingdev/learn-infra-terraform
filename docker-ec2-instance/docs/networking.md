# How the networking works

## Scratch

Security group for the `main` VPC is setup to allow 22 ingress and all outgoing by having `aws_security_group_rule`'s that reference the `security_group_id` of the `main` `aws_security_group`