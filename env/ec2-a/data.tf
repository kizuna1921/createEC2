data "aws_region" "current" {}

data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "ec2-test-20240522"
    key    = "vpc"
    region = "ap-northeast-1"
  }
}

data "terraform_remote_state" "sg" {
  backend = "s3"
  config = {
    bucket = "ec2-test-20240522"
    key    = "sg"
    region = "ap-northeast-1"
  }
}

# 自分のパブリックIP取得
data "http" "ifconfig" {
  url = "http://ipv4.icanhazip.com/"
}

# Amazon Linux 2 の最新版AMIを取得
data "aws_ssm_parameter" "amzn2_latest_ami" {
  name = "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"
}

# Amazon Linux 2 の最新版AMIを取得
data "terraform_remote_state" "subnet_a" {
  backend = "s3"
  config = {
    bucket = "ec2-test-20240522"
    key    = "vpc_c"
    region = "ap-northeast-1"
  }
}