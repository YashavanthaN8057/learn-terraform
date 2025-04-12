data "aws_route53_zone" "main" {
  name         = "cloudcera.shop"
  private_zone = false
}

data "aws_security_group" "main" {
  name = "b59-custom-secgrp"
}



