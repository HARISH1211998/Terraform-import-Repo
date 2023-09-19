provider "aws" {
  region = "ap-southeast-1"  # Change to your desired region
}

resource "aws_dynamodb_table" "uat_billing_metering" {
  name           = "uat_billing_metering"
}
