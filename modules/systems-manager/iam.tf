# --------------------------------------------------------------------
# Amazon IAM Role
# --------------------------------------------------------------------

module "iam-role" {
  source = "../iam-role-basic"

  name                = "AWSSSMRoleForInstances"
  description         = "This role is used by SSM for executing tasks on instances."
  trusted_entities    = ["ec2.amazonaws.com"]
  managed_policy_arns = ["arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"]
}

