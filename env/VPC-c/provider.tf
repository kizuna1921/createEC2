terraform {
  required_version = "~> 1.5.3"

  backend "s3" {
    bucket         = "ec2-test-20240522"
    key            = "vpc_c"
    region         = "ap-northeast-1"
    dynamodb_table = "dynamodb-eks-test-002"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.17.0"
    }
  }
}

provider "aws" {
    region = "ap-northeast-1"
    default_tags {
      tags = {
        env = "dev"
      }
    }
}