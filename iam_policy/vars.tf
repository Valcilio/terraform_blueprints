variable "policy_name" {
  description = "The name of the policy which will be created"
  type        = string
}

variable "roles_name" {
  description = "The name of the role where the policy will be attached"
  type        = list(any)
}

variable "policy_permissions" {
  description = "The permissions of the policy created"
  type        = string
}

variable "policy_description" {
  description = "The description of the policy"
  type        = string
  default     = "No description inputted"
}

variable "assume_role_type" {
  description = "Policy allowing a service to assume a role"
  type        = string
  default     = "Service"
}

variable "assume_role_identifiers" {
  description = "Policy allowing a service to assume a role"
  type        = list(any)
  default     = ["ec2.amazonaws.com", "lambda.amazonaws.com"]
}