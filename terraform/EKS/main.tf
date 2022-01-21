resource "aws_eks_cluster" "prod_cluster" {
  name     = "prod_cluster"
  role_arn = var.cluster_iam_role_arn

  vpc_config {
    subnet_ids = [var.subnet_1, var.subnet_2]
  }
}

resource "aws_eks_node_group" "prod_node_group" {
  cluster_name    = aws_eks_cluster.prod_cluster.name
  node_group_name = "prod_node_group"
  node_role_arn   = var.node_iam_role_arn
  subnet_ids      = [var.subnet_1, var.subnet_2]
  instance_types  = ["t2.micro"]

  remote_access {
    ec2_ssh_key = "Dev"
  }
  scaling_config {
    desired_size = 3
    max_size     = 4
    min_size     = 3
  }
}
