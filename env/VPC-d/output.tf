########################################
### VPC
########################################
output "vpc_id" {
  value = resource.aws_vpc.test_vpc.id
}
########################################
### Subnet
########################################
output "subnet_id_a" {
  value = resource.aws_subnet.test_public_1a_sn.id
}
