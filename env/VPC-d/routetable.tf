# ---------------------------
# Route table
# ---------------------------
# Route table作成
resource "aws_route_table" "test_public_rt" {
  vpc_id            = aws_vpc.test_vpc.id
  route {
    cidr_block      = "0.0.0.0/0"
    gateway_id      = aws_internet_gateway.test_igw.id
  }
  tags = {
    Name = "terraform-test-public-rt"
  }
}

# SubnetとRoute tableの関連付け
resource "aws_route_table_association" "test_public_rt_associate" {
  subnet_id      = aws_subnet.test_public_1a_sn.id
  route_table_id = aws_route_table.test_public_rt.id
}
