terraform {
  backend "s3" {
    bucket = "b59-yashn-8057-yashvanth-7349"
    key    = "test/terraform.tfstate"
    region = "us-east-1"
  }
}