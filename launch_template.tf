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









#or we can use data sources to fetch ami id dynamically

# data "aws_ami" "latest_amazon_linux" {
#   most_recent = true
#   owners      = ["amazon"]

#   filter {
#     name   = "name"
#     values = ["amzn2-ami-hvm-*-x86_64-gp2"]
#   }
# }

# resource "aws_instance" "example" {
#   ami           = data.aws_ami.latest_amazon_linux.id
#   instance_type = "t2.micro"
# }
