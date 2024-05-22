terraform {
  required_version = "~> 1.5.3"

  backend "s3" {
    bucket         = "eks-test-20230811"
    key            = "vpc"
    region         = "ap-northeast-1"
    dynamodb_table = "dynamodb-eks-test-001"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.17.0"
    }
  }
}

#provider "aws" {
#    region = "ap-northeast-1"
#    version = "~> 1.60.0"
#    default_tags {
#      tags = {
#        env = "eks-test"
#      }
#    }
#}