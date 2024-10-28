variable "required_providers" {
  description = "Only needed if deploying to multiple AWS Accounts ..."
  default = null
}

variable "name" {
  description = "Resource Name"
  default = ""
}

variable "tags" {
  default = {}
}

