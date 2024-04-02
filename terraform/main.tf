
provider "aws" {
  region  = "us-west-2"
}

resource "aws_instance" "example_server" {
  ami           = "ami-04e914639d0cca79a"
  instance_type = "t2.micro"

  tags = {
    Name = var.ec2_name
  }
}