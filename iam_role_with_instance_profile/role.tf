resource "aws_iam_role" "role" {
  name               = var.role_name
  assume_role_policy = data.aws_iam_policy_document.assume_role.json
}

resource "aws_iam_policy_attachment" "attach_policy" {
  name       = "attach_policy_to_role"
  roles      = [aws_iam_role.role.name]
  policy_arn = aws_iam_policy.policy.arn
}

output "role_arn" {
  description = "The Role Created"
  value       = aws_iam_role.role.arn
}

output "attach_policy_id" {
  description = "The Attach Policy Created for the Role"
  value       = aws_iam_policy_attachment.attach_policy.id
}