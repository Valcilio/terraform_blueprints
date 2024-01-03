resource "aws_iam_policy_attachment" "attach_policy" {
  name       = "attach_policy_to_role"
  roles      = var.roles_name
  policy_arn = aws_iam_policy.policy.arn
}