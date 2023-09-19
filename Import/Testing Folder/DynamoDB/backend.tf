terraform {
  backend "s3" {
    bucket = "terraform-expand-backup"
    key    = "Dynamo/terraform.tfstate"
    region = "ap-southeast-1"
    dynamodb_table = "terraform-expand-s3-test-backup-lock"
  }
}
