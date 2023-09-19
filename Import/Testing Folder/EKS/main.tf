provider "aws" {
  region = "ap-southeast-1"  # Change to your desired region
}

resource "aws_eks_cluster" "ExpandNetwork" {
  name     = "ExpandNetwork"
  role_arn = "arn:aws:iam::817309679799:role/eksctl-expandNetwork-cluster-ServiceRole-1L88VH2WXCWWY"  # Replace with your IAM role ARN

  vpc_config {
    subnet_ids          = ["subnet-0ba82a4bb12052bf5", "subnet-078a8e647acac2c5f"]  # Replace with your subnet IDs
    security_group_ids  = ["sg-078d8cf34a4d937ac "]  # Replace with your security group IDs
    endpoint_public_access = true
    endpoint_private_access = true
  }
}

resource "aws_eks_node_group" "ExpandNetwork" {
  cluster_name        = "ExpandNetwork"
  node_group_name     = "ExpandNetwork"
}

