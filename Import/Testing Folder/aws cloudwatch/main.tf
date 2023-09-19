resource "aws_cloudwatch_metric_alarm" "awsec2-i-02d6f4b38d1e03b61-GreaterThanOrEqualToThreshold-CPUUtilization" {
  alarm_name          = "awsec2-i-02d6f4b38d1e03b61-GreaterThanOrEqualToThreshold-CPUUtilization"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "1"
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = "60"
  statistic           = "Average"
  threshold           = "50.0"
  alarm_description   = "Created from EC2 Console"
}

resource "aws_cloudwatch_log_group" "API-Request-Response" {
  name = "API-Request-Response"
  tags = {
    Name = "test-apigateway"
  }
}

