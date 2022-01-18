variable "vpc_id" {}

variable "subnet_1" {}

variable "subnet_2" {}

variable "gateway_id" {}
variable "web_traffic" {
  type        = string
  description = "AWS Security Group"
}

variable "web_server" {
  type        = string
  description = "AWS Network Interface"
}

variable "eip" {
  type        = string
  description = "Elastic IP Address"
}
