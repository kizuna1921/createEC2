########################################
### VPC
########################################
variable "vpc_id" {
  description = "VPCのID"
  type        = string
  default     = "vpc-02bafb81222f0d492"
}

########################################
### Subnet
########################################
variable "eks_private_subnets" {
  description = "EKSクラスタ用 private subnet"
  type        = map(any)
  default = {
    subnets = {
      eks-private-1a = {
        subnet_name       = "sub-eks_a-001"
        cidr_block        = "10.0.0.0/26"
        availability_zone = "ap-northeast-1a"
      },
      eks-private-1c = {
        subnet_name       = "sub-eks_c-001"
        cidr_block        = "10.0.0.64/26"
        availability_zone = "ap-northeast-1c"
      },
      eks-private-1d = {
        subnet_name       = "sub-eks_d-001"
        cidr_block        = "10.0.0.128/26"
        availability_zone = "ap-northeast-1d"
      }
    }
  }
}
########################################
### EKS
########################################
variable "eks_cluster_name" {
  description = "eks_clusterの名前"
  type        = string
  default     = "eks_cluster_test"
}
variable "ekscluster_role_name" {
  description = "eks_clusterのロール名"
  type        = string
  default     = "eks_cluster_role_test"
}
variable "ekspodexecution_role_name" {
  description = "ekspodexecutionのロール名"
  type        = string
  default     = "ekspodexecution_role_test"
}
variable "eks_fargate_kubesystem_profile_name" {
  description = "eks_fargate_kubesystem_profileの名前"
  type        = string
  default     = "fargate_kubesystem_profile_test"
}