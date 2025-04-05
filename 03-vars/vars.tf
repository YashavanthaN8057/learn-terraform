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

# List variable 
variable "student_info" { 
  default = [
    "Varun",
     true,
     98,
  ]
}

output "sample_op" {
  value = var.student_info
}

output "sample_op_x" {
    value = "The student name is ${var.student_info[0]} and the student marks are ${var.student_info[2]} and is studing in St josef school is ${var.student_info[1]}"
}


# Map Variable
variable "stock_info" {
  description = "Sample sto variable"
  default = {
    name       = "Infy",
    type       = "NSE",
    department = "finance",
    stoc_price     = 1000
  }
}

output "sample_stoc_op" {
  value = var.stock_info
}

output "sample_map_op_x" {
  value = "The stock name is ${var.stock_info["name"]} and the stock price is ${var.stock_info["stoc_price"]} and the stock type is ${var.stock_info["type"]} and the stock department is ${var.stock_info["department"]}"
}