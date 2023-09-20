terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

resource "aws_api_gateway_rest_api" "test-api-gateway" {
  id = "1234567"
}

resource "aws_api_gateway_resource" "api_gateway_resource_1234" {
  id = "1234"
  parentId = "1234"
  pathPart = "getexample"
  path = "/example/getexample"
}

resource "aws_api_gateway_resource" "api_gateway_resource_12345" {
  id = "12345"
  parentId = "1234a"
  pathPart = "getexample1"
  path = "/example/getexample1"
}

resource "aws_api_gateway_resource" "example_api_gateway_resource_12345A" {
  id = "12345A"
  parentId = "12345a"
  pathPart = "getexample2"
  path = "/example/getexample2"
}
