resource "aws_sns_topic" "general" {
  name = var.name
  display_name = var.display_name
  delivery_policy = var.delivery_policy
  application_success_feedback_role_arn = var.application_success_feedback_role_arn
  application_success_feedback_sample_rate = var.application_success_feedback_sample_rate
  application_failure_feedback_role_arn = var.application_failure_feedback_role_arn
  http_success_feedback_role_arn = var.http_success_feedback_role_arn
  http_success_feedback_sample_rate = var.http_success_feedback_sample_rate
  http_failure_feedback_role_arn = var.http_failure_feedback_role_arn
  kms_master_key_id = var.kms_master_key_id
  signature_version = var.signature_version
  tracing_config = var.tracing_config
  fifo_topic = var.fifo_topic
  archive_policy = var.archive_policy
  content_based_deduplication = var.content_based_deduplication
  lambda_success_feedback_role_arn = var.lambda_success_feedback_role_arn
  lambda_success_feedback_sample_rate = var.lambda_success_feedback_sample_rate
  lambda_failure_feedback_role_arn = var.lambda_failure_feedback_role_arn
  sqs_success_feedback_role_arn = var.sqs_success_feedback_role_arn
  sqs_success_feedback_sample_rate = var.sqs_success_feedback_sample_rate
  sqs_failure_feedback_role_arn = var.sqs_failure_feedback_role_arn
  firehose_success_feedback_role_arn = var.firehose_success_feedback_role_arn
  firehose_success_feedback_sample_rate = var.firehose_success_feedback_sample_rate
  firehose_failure_feedback_role_arn = var.firehose_failure_feedback_role_arn
  tags = var.tags
}

resource "aws_sns_topic_policy" "general" {
  arn = aws_sns_topic.general.arn
  policy = data.aws_iam_policy_document.sns_topic_policy.json
}

data "aws_iam_policy_document" "sns_topic_policy" {
  policy_id = "__default_policy_ID"

  statement {
    actions = [
      "SNS:Subscribe",
      "SNS:SetTopicAttributes",
      "SNS:RemovePermission",
      "SNS:Receive",
      "SNS:Publish",
      "SNS:ListSubscriptionsByTopic",
      "SNS:GetTopicAttributes",
      "SNS:DeleteTopic",
      "SNS:AddPermission",
    ]

    condition {
      test = "StringEquals"
      variable = "AWS:SourceOwner"

      values = [
        var.account-id,
      ]
    }

    effect = "Allow"

    principals {
      type = "AWS"
      identifiers = ["*"]
    }

    resources = [
      aws_sns_topic.test.arn,
    ]

    sid = "__default_statement_ID"
  }
}
