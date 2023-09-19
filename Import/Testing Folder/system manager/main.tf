resource "aws_ssm_patch_baseline" "Expand-network-Patch-Policy" {
  name                 = "Expand-network-Patch-Policy"
  operating_system     = "LINUX"
  approval_rules {
    patch_action         = "APPROVE"
    patch_filter {
      key                 = "MSRC_SEVERITY"
      values              = ["Critical"]
    }
    compliance_level     = "CRITICAL"
  }
}

