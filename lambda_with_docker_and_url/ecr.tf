data "aws_ecr_image" "ecr_data" {
  repository_name = var.ecr_repository_name
  image_tag       = var.image_tag
}