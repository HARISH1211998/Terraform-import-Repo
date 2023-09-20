resource "aws_acm_certificate" "harishankar.xyz" {
  domain_name       = "*.harishankar.xyz"  # Replace with your domain name
  validation_method = "DNS"
}
