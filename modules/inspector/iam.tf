# --------------------------------------------------------------------
# Amazon IAM Role
# --------------------------------------------------------------------

resource "aws_iam_service_linked_role" "inspector" {
  aws_service_name    = "inspector.amazonaws.com"
  description         = "Allowing Inspector to call AWS services on behalf of customers"
}


