variable "aws_region" {
    description = "The AWS region where the app will be deployed."
    type = string
}

variable "name" {
    description = "The name of the repository"
    type = string
}

variable "mutability" {
    description = "If the tag of the IMAGES in ECR are mutable or not."
    type = string
}

variable "scan_on_push" {
    description = "If the image needs to be scanned on push"
    type = bool
    default = false
}

variable "force_delete" {
    description = "If in case of the repository is destroyed the image can be deleted if exists inside it."
    type = bool
    default = false
}