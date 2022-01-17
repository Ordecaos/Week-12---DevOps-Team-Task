variable "vpc_id" {}

variable "gateway_id" {
  type        = string
  description = "Gateway ID"
}

variable "gateway_name" {
  type        = string
  description = "Gateway Name"
}

variable "subnet-1" {
  type        = string
  description = " ID for Subnet-1"
}

variable "subnet-2" {
  type        = string
  description = "ID for Subnet-2"
}

variable "route_table" {
  type        = string
  description = "Route Table Name"
}
