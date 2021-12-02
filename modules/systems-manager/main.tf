# --------------------------------------------------------------------
# Amazon SSM
# --------------------------------------------------------------------

# SSM Service Linked Role.
resource "aws_iam_service_linked_role" "ssm" {
  aws_service_name = "ssm.amazonaws.com"
  description      = "Provides access to AWS Resources managed or used by Amazon SSM."
}

# Instance Profile For SSM
resource "aws_iam_instance_profile" "instance_profile" {
  name = "AWSSSMInstanceProfileForInstances"
  role = module.iam-role.name
}
