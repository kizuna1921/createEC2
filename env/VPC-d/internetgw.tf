# ---------------------------
# Internet Gateway
# ---------------------------
resource "aws_internet_gateway" "test_igw" {
  vpc_id            = aws_vpc.test_vpc.id
  tags = {
    Name = "terraform-test-igw"
  }
}
