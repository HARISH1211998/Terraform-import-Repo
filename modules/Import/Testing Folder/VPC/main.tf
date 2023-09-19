terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"  # Specify the desired version constraint
    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
}

# 1
# Main VPC
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc
resource "aws_vpc" "harishankar.xyz-VPC" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "harishankar.xyz-VPC"
  }
}

# 2
# Public Subnet with Default Route to Internet Gateway
resource "aws_subnet" "harishankar.xyz-Public-Subnet-AZ-A" {
  vpc_id     = aws_vpc.harishankar.xyz-VPC.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "harishankar.xyz-Public-Subnet-AZ-A"
  }
}

resource "aws_internet_gateway" "harishankar.xyz-Internet-Gateway" {
  vpc_id = aws_vpc.harishankar.xyz-VPC.id

  tags = {
    Name = "harishankar.xyz-Internet-Gateway"
  }
}