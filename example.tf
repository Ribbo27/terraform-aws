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
  profile   = "default"
  region    = "eu-west-1"
}

resource "aws_instance" "example" {
    ami             = "ami-032e5b6af8a711f30"
    instance_type   = "t2.micro"
}