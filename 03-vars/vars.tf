# Supported datatypes in terraform
# 1) Numbers 
# 2) Boolents 
# 3) Strings

# variable "a" {}  # This is how you define an emoty variable

variable "Salary" {
    type = number
  default = 10 # This is how you define a variable with default value 
}

output "Prinitng Salary" {   # This is how you print an output variable
  value = "The salary of the employee is ${var.Salary}" 
  
  
  # This is how we can access a variable
}

output "op_x" {
  value = "Value of a is ${var.Salary}"
}