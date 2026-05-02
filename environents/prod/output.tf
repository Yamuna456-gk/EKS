
# --- VPC Outputs ---
output "vpc_id" {
  description = "VPC ID"
  value       = module.vpc.vpc_id
}

output "public_subnet_ids" {
  description = "Public subnet IDs"
  value       = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  description = "Private subnet IDs"
  value       = module.vpc.private_subnet_ids
}

# --- EKS Outputs ---
output "eks_cluster_endpoint" {
  description = "EKS cluster endpoint"
  value       = module.eks.cluster_endpoint
}

output "eks_cluster_name" {
  description = "EKS cluster name"
  value       = module.eks.cluster_name
}

# --- ASG Outputs ---
output "alb_dns_name" {
  description = "ALB DNS name"
  value       = module.asg.alb_dns_name
}

output "asg_name" {
  description = "ASG name"
  value       = module.asg.asg_name
}

