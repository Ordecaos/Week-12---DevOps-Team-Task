resource "aws_iam_role" "eks_node_iam_role" {
  name = "eks_node_iam_role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "eks_node_iam_role-AmazonEKSWorkerNodePolicy" {
  policy_arn = var.eks_worker_node_policy
  role       = aws_iam_role.eks_node_iam_role.name
}

resource "aws_iam_role_policy_attachment" "eks_node_iam_role-AmazonEKS_CNI_Policy" {
  policy_arn = var.eks_cni_policy
  role       = aws_iam_role.eks_node_iam_role.name
}

resource "aws_iam_role_policy_attachment" "eks_node_iam_role-AmazonEC2ContainerRegistryReadOnly" {
  policy_arn = var.ec2_container_registry_readonly_policy
  role       = aws_iam_role.eks_node_iam_role.name
}

resource "aws_iam_role" "eks_cluster_iam_role" {
  name = "eks_cluster_iam_role"

  assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "eks.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role_policy_attachment" "eks_cluster_iam_role-AmazonEKSClusterPolicy" {
  policy_arn = var.eks_cluster_policy
  role       = aws_iam_role.eks_cluster_iam_role.name
}

resource "aws_iam_role_policy_attachment" "eks_cluster_iam_role-AmazonEKSServicePolicy" {
  policy_arn = var.eks_service_policy
  role       = aws_iam_role.eks_cluster_iam_role.name
}
