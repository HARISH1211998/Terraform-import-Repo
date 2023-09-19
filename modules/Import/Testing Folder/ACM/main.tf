resource "aws_acm_certificate" "harishankar-network" {
  domain_name       = "*.harishankar.network"  # Replace with your domain name
  validation_method = "DNS"
}
