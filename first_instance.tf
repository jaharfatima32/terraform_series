terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.92.0" #major .minor .patch (version)

    }
  }
  required_version = ">=1.2" #greater then 1.2 version i want it to select 

}
provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "intro" {
  ami           = "ami-0c7632fb77f35db43"
  instance_type = "t3.micro"

  tags = {
    Name = "dove-instance"
    type = "test"
  }
}
