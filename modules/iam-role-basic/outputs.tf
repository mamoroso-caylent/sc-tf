# ------------------------------------------------------------------------
# Amazon IAM Role outputs
# ------------------------------------------------------------------------

output "arn" {
  value       = aws_iam_role.this.arn
  description = "Amazon Resource Name (ARN) specifying the role."
}

output "id" {
  value       = aws_iam_role.this.id
  description = "Name of the role."
}

output "name" {
  value       = aws_iam_role.this.name
  description = "Name of the role."
}

output "unique_id" {
  value       = aws_iam_role.this.unique_id
  description = "Stable and unique string identifying the role."
}
