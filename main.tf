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
terraform {
  backend "s3"{
    bucket = "test-circleci-state"
    key = "dev/test/terraform.tfstate"
    region = "eu-central-1"
  }
}
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance
resource "aws_instance" "ubuntu" {
  ami           = "ami-0767046d1677be5a0"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.my_subnet_1a.id

  lifecycle {
    create_before_destroy = true
}
}