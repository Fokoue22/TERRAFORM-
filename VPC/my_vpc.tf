# Terraform block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0" # this version will download aws v4.0-4.9
    }
  }
}

#this is the provider
provider "aws" {
  region = "us-west-2"
  
}

# Deploy an ec2 instance 
resource "aws_vpc" "my-ec2" {
  #Argument 
  cidr_block = "10.0.0.0/16"
   tags = { 
    Name = "my-vpc"
  }
}