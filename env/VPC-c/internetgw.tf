# ---------------------------
# Internet Gateway
# ---------------------------
resource "aws_internet_gateway" "test_igw" {
  vpc_id            = aws_vpc.test_vpc_c.id
# 上記はvpc.tfのリソースを参照している
  tags = {
    Name = "terraform-test-igw"
  }
}
