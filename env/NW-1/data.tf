data "aws_region" "current" {}

data "terraform_remote_state" "vpc" {
  backend = "s3"


  config = {
    bucket = "eks-test-20230811"
    key    = "vpc"
    region = "ap-northeast-1"
  }
}

#terraformでsgをデプロイした後
#data "terraform_remote_state" "sg" {
#    backend = "s3"
#    
#    config = {
#        buckend = "{s3用のsg名を記載}"
#        key     = "sg"
#        region  = "ap-northeast-1"
#    }
#}

#terraformでログ用s3をデプロイした後
#data "terraform_remote_state" "s3_log_bucket_ap-northeast-1" {
#    backend = "s3"
#    
#    config = {
#        buckend = "{ログ用S3名}"
#        key     = "bucket_ap-northeasr-1"
#        region  = "ap-northeast-1"
#    }
#}

data "aws_iam_policy_document" "ekscluster_assume" {
  statement {
    effect = "Allow"

    actions = [
      "sts:AssumeRole",
    ]

    principals {
      type = "Service"
      identifiers = [
        "eks.amazonaws.com",
      ]
    }
  }
}

data "aws_iam_policy_document" "ekspodexecution_assume" {
  statement {
    effect = "Allow"

    actions = [
      "sts:AssumeRole",
    ]

    principals {
      type = "Service"
      identifiers = [
        "eks-fargate-pods.amazonaws.com",
      ]
    }
  }
}