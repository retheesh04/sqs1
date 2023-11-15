variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}
 
variable "sqs_names" {
  description = "List of SQS queue names"
  type        = list(string)
  default     = ["queue1", "queue2", "queue3"]  # Default queue names
}
