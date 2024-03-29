data "aws_iam_policy_document" "assume_role" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = var.assume_role_type
      identifiers = var.assume_role_identifiers
    }
  }
}

resource "aws_iam_policy" "policy" {
  name        = "default_policy_${var.role_name}"
  path        = "/"
  description = "Default policy for the role ${var.role_name}"

  policy = var.policy_permissions
}

output "policy_arn" {
  description = "The Policy Created for the Role"
  value       = aws_iam_policy.policy.arn
}