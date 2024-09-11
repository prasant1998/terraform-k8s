variable "cluster_name" {
  description = "The name of the EKS cluster"
  default     = "my-eks-cluster"
}

variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "desired_size" {
  description = "Desired number of nodes"
  default     = 2
}

variable "max_size" {
  description = "Maximum number of nodes"
  default     = 3
}

variable "min_size" {
  description = "Minimum number of nodes"
  default     = 1
}
