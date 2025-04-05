# Supported datatypes in terraform
# 1) Numbers 
# 2) Boolents 
# 3) Strings

# variable "a" {}  # This is how you define an emoty variable

variable "salary" {
   
  default = 10 # This is how you define a variable with default value 
}

output "Prinitng_salary" {   # This is how you print an output variable and rule is that output variable name 
# should be in lowercase and underscore and not in camelcase
  # and the value should be in double quotes and it should be in lowercase and underscore and not in camelcase

  value = "The salary of the employee is ${var.salary}" 
  
  # This is how we can access a variable
}

output "op_x" {
  value = "Value of a is ${var.salary}"
}