resource "aws_launch_template" "eks_node_group_launch_template" {
  name_prefix   = "eks-node-group"
  image_id      = "ami-0e86e20dae9224db8"  # Replace with a valid EKS-optimized AMI ID
  instance_type = "t3.medium"

  tag_specifications {
    resource_type = "instance"

    tags = {
      Name = "eks-node-group-instance"
    }
  }
}
