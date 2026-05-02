
# ================================
# PROD Environment Configuration
# ================================

aws_region   = "us-east-1"
project_name = "my-project"

# --- VPC ---
vpc_cidr             = "[IP_ADDRESS]"
public_subnet_cidrs  = ["10.1.1.0/24", "10.1.2.0/24", "10.1.3.0/24"]
private_subnet_cidrs = ["10.1.10.0/24", "10.1.20.0/24", "10.1.30.0/24"]
availability_zones   = ["ap-southeast-2a", "ap-southeast-2b", "ap-southeast-2c"]

# --- EKS ---
eks_cluster_version     = "1.29"
eks_node_instance_types = ["m5.large"]
eks_node_desired        = 3
eks_node_max            = 6
eks_node_min            = 2

# --- ASG ---
asg_ami_id        = "ami-0ed094fb1304fd857"  # Replace with your AMI
asg_instance_type = "t2.micro"
asg_desired       = 3
asg_max           = 6
asg_min           = 2
key_name          = "Ubuntu"  # Replace with your key pair

