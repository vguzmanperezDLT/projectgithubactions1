data "aws_ami" "ubuntu" {
    most_recent = true

    filter {
        name = "name"
        values = ["hvm"]
    }

    owners = ["099720109477"]
}

provider "aws" {
    region= "us-east-1"
}

resource "aws_instance" "app_server" {
    ami     = data.aws.ami.ubuntu.id
    instance_type = "t2.micro"
    key_name = "app_ssh_key"

    tags = {
        Name = var.ec2_name
    }
}