# ---------------------------
# VPC
# ---------------------------
resource "aws_vpc" "test_vpc_a"{
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true   # DNSホスト名を有効化
  tags = {
    Name = "terraform-test-vpc"
  }
}
