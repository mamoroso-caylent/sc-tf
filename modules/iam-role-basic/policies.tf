# --------------------------------------------------------------------
# Trusted Entities
# --------------------------------------------------------------------

data "aws_iam_policy_document" "trusted_entities" {
  
  statement {
    effect  = "Allow"
    actions = ["sts:AssumeRole"]

    principals {
      type        = var.principal_type
      identifiers = var.trusted_entities
    }
  }
}
