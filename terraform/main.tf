
provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "example_server" {
  ami           = "ami-0b0ea68c435eb488d"
  instance_type = "t2.micro"

  tags = {
    Name = var.ec2_name
  }
}