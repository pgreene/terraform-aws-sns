resource "aws_sns_topic" "sev" {
  name = var.name

  tags = var.tags
}

resource "aws_sns_topic_policy" "default" {
  arn    = aws_sns_topic.sev.arn
  policy = data.aws_iam_policy_document.sns_topic_policy.json
}

resource "aws_sns_topic_subscription" "pagerduty" {
  topic_arn = aws_sns_topic.sev.arn
  protocol  = var.protocol
  endpoint  = var.alerts_endpoint
  endpoint_auto_confirms = true
  raw_message_delivery = var.raw_message_delivery
}
