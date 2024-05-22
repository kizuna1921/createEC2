########################################
### Subnet
########################################
## EKSクラスタ用　private subnet
output "eks_private_subnet_id_a" {
  value = module.eks_private_subnet["eks-private-1a"].subnet_ids
}
output "eks_private_subnet_id_c" {
  value = module.eks_private_subnet["eks-private-1c"].subnet_ids
}
output "eks_private_subnet_id_d" {
  value = module.eks_private_subnet["eks-private-1d"].subnet_ids
}
########################################
### Subnet cidr_block
########################################
output "eks_private_subnet_cidr_block_a" {
  value = module.eks_private_subnet["eks-private-1a"].cidr_block
}
output "eks_private_subnet_cidr_block_c" {
  value = module.eks_private_subnet["eks-private-1c"].cidr_block
}
output "eks_private_subnet_cidr_block_d" {
  value = module.eks_private_subnet["eks-private-1d"].cidr_block
}