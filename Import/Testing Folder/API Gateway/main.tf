terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

resource "aws_api_gateway_rest_api" "test-expand-api-gateway" {
  id = "2jpexdr6y8"
}

resource "aws_api_gateway_resource" "api_gateway_resource_08xhjv" {
  id = "08xhjv"
  parentId = "azhn7n"
  pathPart = "getliquidity"
  path = "/bridge/getliquidity"
}

resource "aws_api_gateway_resource" "api_gateway_resource_1p3emd" {
  id = "1p3emd"
  parentId = "yuvdh3"
  pathPart = "getgasprice"
  path = "/chain/getgasprice"
}

resource "aws_api_gateway_resource" "example_api_gateway_resource_4qlhug" {
  id = "4qlhug"
  parentId = "601btu"
  pathPart = "getmetadata"
  path = "/nft/getmetadata"
}