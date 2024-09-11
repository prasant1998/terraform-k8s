output "eks_cluster_name" {
  value = aws_eks_cluster.eks_cluster.name
}

output "public_node_group_name" {
  value = aws_eks_node_group.public_node_group.node_group_name
}

output "private_node_group_name" {
  value = aws_eks_node_group.private_node_group.node_group_name
}
