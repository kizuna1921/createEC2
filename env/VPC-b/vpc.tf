# ---------------------------
# VPC
# ---------------------------
resource "aws_vpc" "test_vpc_b"{
  cidr_block           = var.vpc_cidr_block
  enable_dns_hostnames = true   # DNSホスト名を有効化
  tags = {
    Name = var.vpc_name
  }
}
