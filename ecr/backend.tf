terraform {
  backend "s3" {
    bucket = "terraform-states-valcilio"
    key    = "terraform_state/ecr_${var.name}/terraform.tfstate"
    region = var.aws_region
  }
}