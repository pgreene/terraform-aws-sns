variable "name" {
  description = "use naming module https://github.com/Voyanta/terraform-terraform-label"
  default = ""
}

variable "tags" {
  default = {}
}

variable "key" {
  description = "Backend State File"
  default = ""
}

variable "alerts_endpoint" {
  default = "" //SEV1 or L3
}

variable "protocol" {
  description = "https, email, etc"
  default     = "https"
}

variable "raw_message_delivery" {
  default     = "false"
}

variable "severity" {
  description = "sev1, sev2 or sev3"
  default     = "sev1"
}