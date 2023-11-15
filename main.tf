terraform {
  required_version = ">= 1.0.11"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.46.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA6LGMWVR7UPVNFDMA"
  secret_key = "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"
}

module "create_multiple_sqs" {
  source = "./modules/sqs"
 
  sqs_names = var.sqs_names
}
