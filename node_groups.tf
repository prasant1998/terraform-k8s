resource "aws_eks_node_group" "public_node_group" {
  cluster_name    = aws_eks_cluster.eks_cluster.name
  node_group_name = "public-node-group"
  node_role_arn   = aws_iam_role.eks_node_group_role.arn   # Add the required node_role_arn argument
  subnet_ids      = aws_subnet.public_subnets[*].id

  scaling_config {
    desired_size = 2
    max_size     = 3
    min_size     = 1
  }

  launch_template {
    id      = aws_launch_template.eks_node_group_launch_template.id
    version = "$Latest"
  }

  depends_on = [
    aws_iam_role_policy_attachment.eks_node_group_AmazonEKSWorkerNodePolicy,
    aws_iam_role_policy_attachment.eks_node_group_AmazonEC2ContainerRegistryReadOnly
  ]
}

resource "aws_eks_node_group" "private_node_group" {
  cluster_name    = aws_eks_cluster.eks_cluster.name
  node_group_name = "private-node-group"
  node_role_arn   = aws_iam_role.eks_node_group_role.arn   # Add the required node_role_arn argument
  subnet_ids      = aws_subnet.private_subnets[*].id

  scaling_config {
    desired_size = 2
    max_size     = 3
    min_size     = 1
  }

  launch_template {
    id      = aws_launch_template.eks_node_group_launch_template.id
    version = "$Latest"
  }

  depends_on = [
    aws_iam_role_policy_attachment.eks_node_group_AmazonEKSWorkerNodePolicy,
    aws_iam_role_policy_attachment.eks_node_group_AmazonEC2ContainerRegistryReadOnly
  ]
}
