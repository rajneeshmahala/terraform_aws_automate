
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}
provider "aws" {
  region = "ap-south-1"
  access_key = "accesskey"
  secret_key = "password key"
}

resource "aws_instance" "rhel_httpd" {
  ami           = "ami-06a0b4e3b7eb7a300"
  instance_type = "t2.micro"

  tags = {
    Name = "rhel httpd server"
  }
}
