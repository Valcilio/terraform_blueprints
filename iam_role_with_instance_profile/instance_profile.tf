resource "aws_iam_instance_profile" "zomato-train-instance-profile" {
  name = var.role_name
  role = aws_iam_role.role.name
}

output "instance_profile_arn" {
  description = "The ARN of the instance profile"
  value       = aws_iam_instance_profile.zomato-train-instance-profile.arn
}