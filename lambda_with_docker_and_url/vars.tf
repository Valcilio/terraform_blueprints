variable "name" {
    description = "The name of the lambda function"
    type = string
}

variable "aws_region" {
  description = "The AWS region"
  type = string
}

variable "aws_account_id" {
    description = "The Account ID from the AWS"
    type = string
}

variable "role_arn" {
    description = "The ARN of the lambda function's role"
    type = string
}

variable "ecr_repository_name" {
    description = "The name of the ECR repository containing the docker image"
    type = string
}

variable "image_tag" {
  description = "The ecr image's tag"
  type = string
}

variable "ephemeral_storage" {
    description = "The size of the lambda's ephemeral storage"
    type = number
    default = 2000
}

variable "timeout" {
    description = "The lambda function's timeout"
    type = string
    default = "900"
}

variable "authorization_type" {
    description = "the type of authorization in the lambda."
    type = string
    default = "NONE"
}

