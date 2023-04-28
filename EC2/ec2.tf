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
resource "aws_instance" "my-ec2" {
  #Argument 
  ami = "ami-009c5f630e96948cb" 
  instance_type = "t3.micro"
  key_name = "my-terraform-keypair"
  subnet_id = "subnet-0dfff3abf219c7013"
   tags = { 
    Name = "my-ec2"
  }
}
