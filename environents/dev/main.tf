
# --- VPC Module ---
module "vpc" {
  source = "../../modules/vpc"

  environment          = "dev"
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  availability_zones   = var.availability_zones
  cluster_name         = "dev-eks-cluster"
}

# --- EKS Module ---
module "eks" {
  source = "../../modules/eks"

  environment             = "dev"
  cluster_name            = "dev-eks-cluster"
  cluster_version         = var.eks_cluster_version
  vpc_id                  = module.vpc.vpc_id
  subnet_ids              = module.vpc.private_subnet_ids
  endpoint_private_access = true
  endpoint_public_access  = true
  node_instance_types     = var.eks_node_instance_types
  capacity_type           = "SPOT"
  node_desired_size       = var.eks_node_desired
  node_max_size           = var.eks_node_max
  node_min_size           = var.eks_node_min
}

# --- ASG Module ---
module "asg" {
  source = "../../modules/asg"

  environment          = "dev"
  vpc_id               = module.vpc.vpc_id
  public_subnet_ids    = module.vpc.public_subnet_ids
  private_subnet_ids   = module.vpc.private_subnet_ids
  ami_id               = var.asg_ami_id
  instance_type        = var.asg_instance_type
  key_name             = var.key_name
  desired_capacity     = var.asg_desired
  max_size             = var.asg_max
  min_size             = var.asg_min
  health_check_path    = "/"
  ssh_cidr_blocks      = ["0.0.0.0/0"]
  scale_up_threshold   = 70
  scale_down_threshold = 30

  user_data = <<-EOF
    #!/bin/bash
    yum update -y
    yum install -y httpd
    systemctl start httpd
    systemctl enable httpd
    echo "<h1>Dev Environment - $(hostname)</h1>" > /var/www/html/index.html
  EOF
}

