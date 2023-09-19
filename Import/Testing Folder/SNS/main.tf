provider "aws" {
  region = "ap-southeast-1"  # Replace with your desired region
}

resource "aws_sns_topic" "aws-config-alarm" {
  name = "aws-config-alarm"  # Replace with the desired SNS topic name
}
