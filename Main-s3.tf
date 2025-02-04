terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.85.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}



resource "aws_s3_bucket" "jalil-bucket" {
  bucket_prefix = "jalil-bucket"

  tags = {
    Name        = "jenkins-test"
    Environment = "Prod"
  }
}