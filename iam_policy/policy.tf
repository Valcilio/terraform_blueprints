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
  name        = var.policy_name
  path        = "/"
  description = var.policy_description

  policy = jsonencode(var.policy_permissions)
}

output "policy_arn" {
  description = "The Policy Created"
  value       = aws_iam_policy.policy.arn
}