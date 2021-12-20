# --------------------------------------------------------------------
# Amazon Inspector
# --------------------------------------------------------------------

# Resource Group
resource "aws_inspector_resource_group" "group" {
  tags = {
    BillingCategory = "eMed-${terraform.workspace}"
  }
}

# Target
resource "aws_inspector_assessment_target" "target" {
  name = "Target-SC-${terraform.workspace}"
}

# Template
resource "aws_inspector_assessment_template" "template" {
  name               = "Assessment-SC-${terraform.workspace}"
  target_arn         = aws_inspector_assessment_target.target.arn
  duration           = 3600

  rules_package_arns = local.rules_package_arns
}