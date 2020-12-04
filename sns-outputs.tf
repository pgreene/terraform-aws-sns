output "name" {
  value = aws_sns_topic.sev.name
}

output "id" {
  value = aws_sns_topic.sev.id
}

output "arn" {
  value = aws_sns_topic.sev.arn
}

output "pagerduty_arn" {
    value = aws_sns_topic_subscription.pagerduty.arn
}