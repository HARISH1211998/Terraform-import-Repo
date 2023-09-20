provider "aws" {
  region = "ap-southeast-1"  # Change to your desired region
}

resource "aws_dynamodb_table" "dynamo_db" {
  name           = "dynamo_db"
}
