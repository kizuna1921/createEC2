########################################
### SG
########################################
output "sg_id" {
  value = resource.aws_security_group.test_ec2_sg.id
}