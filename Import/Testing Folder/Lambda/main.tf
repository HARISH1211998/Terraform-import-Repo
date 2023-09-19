provider "aws" {
  region = "ap-southeast-1"  # Replace with your desired region
}

resource "aws_lambda_function" "baseline-overrides-89fa-t2n7k" {
  function_name = "baseline-overrides-89fa-t2n7k"  # Replace with the desired Lambda function name
  role          = "arn:aws:lambda:ap-southeast-1:817309679799:function:baseline-overrides-89fa-t2n7k"  # Replace with the appropriate IAM role ARN
  handler       = "index.lambda_handler"  # Replace with the appropriate handler function
  runtime       = "python3.9"  # Replace with the appropriate runtime
  filename      = "baseline-overrides.zip"  # Replace with the appropriate deployment package
  source_code_hash = filebase64sha256("baseline-overrides.zip")  # Replace with the appropriate deployment package hash
}
