variable "components" {  # corrected the typo here
  default = {
    frontend = {
      instance_type = "t3.micro"
      ami           = "ami-0fcc78c828f981df2"
    }

    mysql = {
      
    }

    backend = {
      instance_type = "t2.micro"
      ami           = "ami-0fcc78c828f981df2"
    }

    tracking = {
      # instance_type = ""  # If instance_type is empty, you can default it here
      ami = "ami-0fcc78c828f981df2"
    }
  }
}

resource "aws_instance" "main" {
  for_each = var.components  # corrected the typo here

  ami             = each.value["ami"]
  instance_type   = try(each.value["instance_type"], "t3.nano")  # default to t3.nano if instance_type is missing
  vpc_security_group_ids = ["sg-077f983ebb31256bb"]

  tags = {
    Name = each.key
  }
}


