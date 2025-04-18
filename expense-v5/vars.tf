variable "componets" {
  default = {
    mysql = {
      instance_type = "t3.medium"

    }
    backend = {
      instance_type = "t2.micro"
    }

    frontend = {
      instance_type = "t3.micro"
    }
  }
}

variable "env" {}
variable "ami" {
  default = "ami-0fcc78c828f981df2"
}

# variable "ami" {
#   default = "ami-0fcc78c828f981df2"
# }

# variable "vpc_security_group_ids" {
#   default = ["sg-0b37bb6b6f027ffc5"]
# }
# variable "zone_id" {
#     default = "Z08061862LBZAM174JIHO"
# }