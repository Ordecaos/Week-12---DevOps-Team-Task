variable "cidr_block" {
  type        = string
  description = "Main CIDR block"
  default     = "10.0.0.0/24"
}

variable "vpc_name" {
  type        = string
  description = "VPC Name"
  default     = "Production VPC"
}
