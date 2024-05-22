########################################
### VPC
########################################
variable "vpc_cidr_block" {
  description = "VPCのcidr_block"
  type        = string
  default     = "10.0.1.0/24"
}

variable "vpc_name" {
  description = "VPCのcidr_block"
  type        = string
  default     = "terraform-test-vpc-2"
}