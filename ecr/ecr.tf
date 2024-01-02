resource "aws_ecr_repository" "ecr_repository" {
  name                 = var.name
  image_tag_mutability = var.mutability

  image_scanning_configuration {
    scan_on_push = var.scan_on_push
  }
  force_delete = var.force_delete
}

output "ecr_name" {
  description = "The name of the ECR repository"
  value       = aws_ecr_repository.ecr_repository.name
}