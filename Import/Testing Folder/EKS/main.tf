provider "aws" {
  region = "ap-southeast-1"  # Change to your desired region
}

resource "aws_eks_cluster" "Example" {
  name     = "Example"
  role_arn = "arn:aws:iam::01234567:role/eksctl-Example-cluster-ServiceRole-1AK1234"  # Replace with your IAM role ARN

  vpc_config {
    subnet_ids          = ["subnet-0bdb2344", "subnet-0bdb2344"]  # Replace with your subnet IDs
    security_group_ids  = ["sg-0bdb2344 "]  # Replace with your security group IDs
    endpoint_public_access = true
    endpoint_private_access = true
  }
}

resource "aws_eks_node_group" "Example" {
  cluster_name        = "Example"
  node_group_name     = "Example"
}

