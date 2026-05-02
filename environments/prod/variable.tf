
variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name"
  type        = string
  default     = "my-project"
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
}

variable "public_subnet_cidrs" {
  description = "Public subnet CIDRs"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "Private subnet CIDRs"
  type        = list(string)
}

variable "availability_zones" {
  description = "Availability zones"
  type        = list(string)
}

variable "eks_cluster_version" {
  description = "EKS cluster Kubernetes version"
  type        = string
  default     = "1.29"
}

variable "eks_node_instance_types" {
  description = "EKS node instance types"
  type        = list(string)
  default     = ["m5.large"]
}

variable "eks_node_desired" {
  description = "Desired EKS nodes"
  type        = number
  default     = 3
}

variable "eks_node_max" {
  description = "Max EKS nodes"
  type        = number
  default     = 4
}

variable "eks_node_min" {
  description = "Min EKS nodes"
  type        = number
  default     = 2
}

variable "asg_ami_id" {
  description = "AMI ID for ASG instances"
  type        = string
}

variable "asg_instance_type" {
  description = "Instance type for ASG"
  type        = string
  default     = "m5.large"
}

variable "asg_desired" {
  description = "Desired ASG instances"
  type        = number
  default     = 3
}

variable "asg_max" {
  description = "Max ASG instances"
  type        = number
  default     = 6
}

variable "asg_min" {
  description = "Min ASG instances"
  type        = number
  default     = 2
}

variable "key_name" {
  description = "SSH key pair name"
  type        = string
  default     = ""
}

