resource "aws_instance" "main" {
  
  ami           = "ami-072983368f2a6eab5"
  instance_type = "t3.micro"

  tags = {
    Name = "backend"
  }
}