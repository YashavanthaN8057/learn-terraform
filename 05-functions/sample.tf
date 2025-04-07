# Declaring an empty variable
variable "fruits" {}

output "apple_op_x" {
  value = "Apples are ${lookup(var.fruits["apple"], "color", "GREEN")} and their state of origin is ${lookup(var.fruits["apple"], "state", "HP")}"
}


# look up is a function that is used to access a map or a list. It takes three arguments:
# -the map or list, the key or index, and a default value. If the key or index is not found, it returns the default value.