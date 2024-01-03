resource "aws_iam_role" "role" {
  name               = var.role_name
  assume_role_policy = data.aws_iam_policy_document.assume_role.json
}

resource "aws_iam_policy_attachment" "attach_ec2_policy" {
  name       = "attach_policy_to_role"
  roles      = [aws_iam_role.role.name]
  policy_arn = aws_iam_policy.policy.arn
}