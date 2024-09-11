terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    bucket = "reddy-remote-state" #"daws78s-remote-state"
    key    = "workspace"
    region = "us-east-1"
    dynamodb_table = "reddy-locking" #"daws78s-locking"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}