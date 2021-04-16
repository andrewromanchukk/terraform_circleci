provider "aws" {
  region = "eu-central-1"
}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
#   backend "s3" {
#     bucket = "terraform-ar"
#     key    = "platform.tfstate"
#     region = "eu-west-1"
#   }
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance
resource "aws_instance" "ubuntu" {
  ami           = "ami-08bac620dc84221eb"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.my_subnet_1a.id
}