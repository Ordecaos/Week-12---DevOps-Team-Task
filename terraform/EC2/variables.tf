# variable "web_server_1" {}

# variable "web_server_2" {}

variable "subnet_1" {}

variable "subnet_2" {}

variable "web_traffic" {}

variable "ami" {
  type        = string
  description = "Amazon Machine Image"
  default     = "ami-0015a39e4b7c0966f"
}

variable "instance_micro" {
  type        = string
  description = "Micro EC2 Instance"
  default     = "t2.micro"
}

variable "instance_medium" {
  type        = string
  description = "Medium EC2 Instance"
  default     = "t2.medium"
}
