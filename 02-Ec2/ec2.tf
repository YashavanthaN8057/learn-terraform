resource "aws_instance" "main" {
   ami           = "ami-0fcc78c828f9df2"
 
  instance_type = "t3.micro"
  

  tags = {
    Name = "backend"
  }
}