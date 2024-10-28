resource "aws_sns_topic" "general" {
  name = var.name
  tags = var.tags
}

resource "aws_sns_topic_policy" "general" {
  arn = aws_sns_topic.general.arn
  policy = data.aws_iam_policy_document.sns_topic_policy.json
}
