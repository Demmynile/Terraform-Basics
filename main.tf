terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

#configure 
provider "aws" {
  version    = "~> 4.0"
  access_key = var.access_key
  secret_key = var.secret_key
  region     = var.region
}

// creating an instance
resource "aws_instance" "foobar" {
  ami           = lookup(var.amis, var.region)
  instance_type = var.instanceType
}
