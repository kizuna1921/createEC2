########################################
### Subnet
########################################
## EKSクラスタ用　private subnet
module "eks_private_subnet" {
  source            = "../../../modules/nw/subnet"
  for_each          = var.eks_private_subnets.subnets
  vpc_id            = var.vpc_id
  cidr_block        = each.value.cidr_block
  subnet_name       = each.value.subnet_name
  availability_zone = each.value.availability_zone
}

# ---------------------------
# Subnet
# ---------------------------
resource "aws_subnet" "test_public_1a_sn" {
  vpc_id            = aws_vpc.test_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "${var.az_a}"

  tags = {
    Name = "terraform-test-public-1a-sn"
  }
}