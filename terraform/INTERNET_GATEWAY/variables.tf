variable "vpc_id" {}

variable "subnet_1" {}

variable "subnet_2" {}

variable "route_table" {}
variable "gateway_id" {
  type        = string
  description = "Gateway ID"
}

variable "gateway_name" {
  type        = string
  description = "Gateway Name"
  default     = "Main Gateway"
}
