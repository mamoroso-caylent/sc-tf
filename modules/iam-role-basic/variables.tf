# ------------------------------------------------------------------------
# Amazon IAM Role variables
# ------------------------------------------------------------------------

variable "name" {
  description = "Friendly name of the role. If omitted, Terraform will assign a random, unique name. See IAM Identifiers for more information."
  type        = string
}

variable "description" {
  description = "Description of the role."
  type        = string
}

variable "managed_policy_arns" {
  description = "Set of exclusive IAM managed policy ARNs to attach to the IAM role. If this attribute is not configured, Terraform will ignore policy attachments to this resource. When configured, Terraform will align the role's managed policy attachments with this set by attaching or detaching managed policies. Configuring an empty set (i.e., managed_policy_arns = []) will cause Terraform to remove all managed policy attachments."
  type        = list
  default     = []
}

variable "trusted_entities" {
  description = "Defines which principals can assume the role, and under which conditions. This is sometimes referred to as a resource-based policy for the IAM role. We’ll refer to this policy simply as the ‘trust policy’."
  type        = list
  default     = []
}

variable "iam_role_policy" {
  description = "Policy document as a JSON formatted string. For more information about building IAM policy documents with Terraform, see the AWS IAM Policy Document Guide."
  type        = any
  default     = []
}

variable "principal_type" {
  description = "Whether is an AWS or a Service principal."
  type        = string
  default     = "Service"
}
