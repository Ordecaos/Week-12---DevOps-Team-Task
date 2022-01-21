variable "vpc_id" {}

variable "subnet_1" {}

variable "subnet_2" {}

variable "gateway_id" {}

variable "web_traffic" {
  type        = string
  description = "AWS Security Group"
}

variable "web_server_1" {
  type        = string
  description = "AWS Network Interface 1 ID"
}

# variable "web_server_2" {
#   type        = string
#   description = "AWS Network Interface 2 ID "
# }

variable "load_balancer" {
  type        = string
  description = "Load Balancer EC2"
}
