data "aws_route53_zone" "main" {
  name         = "cloudcera.shop"
  private_zone = false
}

data "aws_security_group" "main" {
  name = "b59-custom-secgrp"
}

data "aws_ami" "main" {
  most_recent = true

  owners = ["034362053751"]
  tags = {
    Name = "DevOps-LabImage-RHEL9"
  }
}

