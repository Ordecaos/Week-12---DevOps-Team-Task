variable "subnet_1" {}

variable "subnet_2" {}

variable "cluster_iam_role_arn" {
  description = "IAM Role for EKS Cluster"
}

variable "node_iam_role_arn" {
  description = "IAM Role for EKS Node Group"
}


