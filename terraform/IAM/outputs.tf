output "node_role_policy_1" {
  value = aws_iam_role_policy_attachment.eks_node_iam_role-AmazonEKSWorkerNodePolicy.id
}

output "node_role_policy_2" {
  value = aws_iam_role_policy_attachment.eks_node_iam_role-AmazonEKS_CNI_Policy.id
}

output "node_role_policy_3" {
  value = aws_iam_role_policy_attachment.eks_node_iam_role-AmazonEC2ContainerRegistryReadOnly.id
}

output "cluster_role_policy_1" {
  value = aws_iam_role_policy_attachment.eks_cluster_iam_role-AmazonEKSServicePolicy.id
}

output "cluster_role_policy_2" {
  value = aws_iam_role_policy_attachment.eks_cluster_iam_role-AmazonEKSClusterPolicy.id
}

output "node_iam_role" {
  value = aws_iam_role.eks_node_iam_role.arn
}

output "cluster_iam_role" {
  value = aws_iam_role.eks_cluster_iam_role.arn
}
