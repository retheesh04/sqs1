variable "sqs_names" {
  description = "List of SQS queue names"
  type        = list(string)
}
 
resource "aws_sqs_queue" "sqs_queues" {
  count = length(var.sqs_names)
 
  name = var.sqs_names[count.index]
  # Other configurations...
}
