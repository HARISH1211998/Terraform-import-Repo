provider "aws" {
  region = "ap-southeast-1"  # Replace with your desired region
}

resource "aws_wafv2_web_acl" "webacl-expand-network-uat" {
  name                = "webacl-expand-network-uat"
  scope               = "REGIONAL" 
  default_action {
    allow {}
  }
  capacity            = 900
  managed_by_firewall_manager = false
  label_namespace     = "awswaf:817309679799:webacl:webacl-expand-network-uat:"

  visibility_config {
    sampled_requests_enabled     = true
    cloudwatch_metrics_enabled   = true
    metric_name                  = "webacl-expand-network-uat"
  }

  rules {
    name      = "AWS-AWSManagedRulesSQLiRuleSet"
    priority  = 0

    statement {
      managed_rule_group_statement {
        vendor_name = "AWS"
        name        = "AWSManagedRulesSQLiRuleSet"
      }
    }

    override_action {
      none {}
    }

    visibility_config {
      sampled_requests_enabled   = true
      cloudwatch_metrics_enabled = true
      metric_name                = "AWS-AWSManagedRulesSQLiRuleSet"
    }
  }

  rules {
    name      = "AWS-AWSManagedRulesCommonRuleSet"
    priority  = 1

    statement {
      managed_rule_group_statement {
        vendor_name = "AWS"
        name        = "AWSManagedRulesCommonRuleSet"
      }
    }

    override_action {
      none {}
    }

    visibility_config {
      sampled_requests_enabled   = true
      cloudwatch_metrics_enabled = true
      metric_name                = "AWS-AWSManagedRulesCommonRuleSet"
    }
  }
}
