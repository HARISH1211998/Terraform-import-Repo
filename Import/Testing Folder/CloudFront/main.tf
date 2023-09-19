terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

resource "aws_grafana_workspace" "API-Key-Monitoring-Dashboard" {
  id = "g-d72959008e"
}