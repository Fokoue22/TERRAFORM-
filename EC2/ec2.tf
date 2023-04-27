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
  ami = "ami-02396cdd13e9a1257" 
  instance_type = "t3.micro"
  key_name = "jan2023-keypair"
  subnet_id = "subnet-09056e0d87f2a2f58"
   tags = { 
    Name = "my-ec2"
  }
}
