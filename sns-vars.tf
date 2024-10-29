variable "required_providers" {
  description = "Only needed if deploying to multiple AWS Accounts ..."
  default = null
}

variable "name" {
  description = "Resource Name"
  default = ""
}

variable "display_name" {
  default = null
}

variable "delivery_policy" {
  default = null
}

variable "application_success_feedback_role_arn" {
  default = null
}

variable "application_success_feedback_sample_rate" {
  default = null
}

variable "application_failure_feedback_role_arn" {
  default = null
}

variable "http_success_feedback_role_arn" {
  default = null
}

variable "http_success_feedback_sample_rate" {
  default = null
}

variable "http_failure_feedback_role_arn" {
  default = null
}

variable "kms_master_key_id" {
  default = null
}

variable "signature_version" {
  default = null
}

variable "tracing_config" {
  default = null
}

variable "fifo_topic" {
  default = null
}

variable "archive_policy" {
  default = null
}

variable "content_based_deduplication" {
  default = null
}

variable "lambda_success_feedback_role_arn" {
  default = null
}

variable "lambda_success_feedback_sample_rate" {
  default = null
}

variable "lambda_failure_feedback_role_arn" {
  default = null
}

variable "sqs_success_feedback_role_arn" {
  default = null
}

variable "sqs_success_feedback_sample_rate" {
  default = null
}

variable "sqs_failure_feedback_role_arn" {
  default = null
}

variable "firehose_success_feedback_role_arn" {
  default = null
}

variable "firehose_success_feedback_sample_rate" {
  default = null
}

variable "firehose_failure_feedback_role_arn" {
  default = null
}

variable "tags" {
  default = null
}

variable "account-id" {
  default = null
}

