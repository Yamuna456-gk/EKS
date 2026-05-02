
# ================================
# DEV Environment Configuration
# ================================

aws_region   = "ap-southeast-2"
project_name = "my-project"

# --- VPC ---
vpc_cidr             = "10.0.0.0/16"
public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnet_cidrs = ["10.0.10.0/24", "10.0.20.0/24"]
availability_zones   = ["ap-southeast-2a", "ap-southeast-2b"]

# --- EKS ---
eks_cluster_version     = "1.29"
eks_node_instance_types = ["t3.medium"]
eks_node_desired        = 2
eks_node_max            = 3
eks_node_min            = 1

# --- ASG ---
asg_ami_id        = "ami-0ed094fb1304fd857"  # Replace with your AMI
asg_instance_type = "t3.micro"
asg_desired       = 1
asg_max           = 2
asg_min           = 1
key_name          = "NorthVirginia"  # Replace with your key pair

