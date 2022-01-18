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

variable "manager" {
  type        = string
  description = "Name for Manager Node"
  default     = "Manager Node"
}

variable "worker" {
  type        = string
  description = "Name for Worker Node"
  default     = "Worker Node"
}

variable "jenkins" {
  type        = string
  description = "Name for CI/CD Server"
  default     = "CI/CD Server"
}

variable "nginx" {
  type        = string
  description = "Name for Load Balancer"
  default     = "Load Balancer"
}

