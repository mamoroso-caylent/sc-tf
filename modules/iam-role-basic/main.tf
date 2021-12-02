# --------------------------------------------------------------------
# Amazon IAM Role
# --------------------------------------------------------------------

resource "aws_iam_role" "this" {
  name                = var.name
  description         = var.description
  assume_role_policy  = data.aws_iam_policy_document.trusted_entities.json
  managed_policy_arns = var.managed_policy_arns
}

resource "aws_iam_role_policy" "this" {
  count  = var.iam_role_policy != [] ? 1 : 0

  name   = var.name
  role   = aws_iam_role.this.id
  policy = var.iam_role_policy
}
