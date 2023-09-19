resource "aws_acm_certificate" "expand-network" {
  domain_name       = "*.expand.network"  # Replace with your domain name
  validation_method = "DNS"
}
