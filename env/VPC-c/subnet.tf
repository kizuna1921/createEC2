# ---------------------------
# Subnet
# ---------------------------
resource "aws_subnet" "test_public_1a_sn" {
  vpc_id            = aws_vpc.test_vpc_c.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "${var.az_a}"

  tags = {
    Name = "terraform-test-public-1a-sn"
  }
}