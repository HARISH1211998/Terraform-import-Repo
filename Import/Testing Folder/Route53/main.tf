# Manages a Route53 Hosted Zone
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_zone
resource "aws_route53_zone" "expandnetwork" {
  name    = "expandnetwork.io"
  comment = ""
}