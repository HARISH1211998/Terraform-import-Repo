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
resource "aws_vpc" "Expand-Network-VPC" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "Expand-Network-VPC"
  }
}

# 2
# Public Subnet with Default Route to Internet Gateway
resource "aws_subnet" "Expand-Network-Public-Subnet-AZ-A" {
  vpc_id     = aws_vpc.Expand-Network-VPC.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Expand-Network-Public-Subnet-AZ-A"
  }
}

resource "aws_internet_gateway" "Expand-Network-Internet-Gateway" {
  vpc_id = aws_vpc.Expand-Network-VPC.id

  tags = {
    Name = "Expand-Network-Internet-Gateway"
  }
}