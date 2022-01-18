variable "vpc_id" {}

variable "route_table" {}
variable "subnet_1" {
  type        = string
  description = " ID for Subnet-1"
}

variable "subnet_2" {
  type        = string
  description = "ID for Subnet-2"
}
