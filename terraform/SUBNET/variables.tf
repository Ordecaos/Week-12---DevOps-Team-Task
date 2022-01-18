variable "vpc_id" {}

variable "subnet_1" {
  type        = string
  description = " ID for Subnet-1"
}

variable "sub1_name" {
  type        = string
  description = " Name for Subnet-1"
  default     = "Subnet-1"
}

variable "subnet_2" {
  type        = string
  description = "ID for Subnet-2"
}

variable "sub2_name" {
  type        = string
  description = " Name for Subnet-2"
  default     = "Subnet-2"
}
variable "route_table" {
  type        = string
  description = "Route Table Name"
  default     = "Main Route Table"
}
