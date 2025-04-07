resource "null_resource" "main" {
  count = 3
}

variable "stocks" {
  default = ["Infy","TCS","Wipro"]
}

resource "null_resource" "this" {
  count = length(var.stocks)
}

resource "null_resource" "stocks" {
    count = length(var.stocks)
    
    }
