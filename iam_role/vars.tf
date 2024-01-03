variable "role_name" {
  description = "The name of the role which will be created"
  type = string
}

variable "policy_permissions" {
    description = "The permissions of the default policy of the role created"
    type = map
}

variable "assume_role_type" {
    description = "Policy allowing a service to assume a role"
    type = string
    default = "Service"
}

variable "assume_role_identifiers" {
    description = "Policy allowing a service to assume a role"
    type = list
    default = ["ec2.amazonaws.com", "lambda.amazonaws.com"]
}