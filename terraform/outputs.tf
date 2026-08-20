output "cluster_name" {
  description = "EKS Cluster Name"
  value       = module.eks.cluster_name
}

output "cluster_endpoint" {
  description = "EKS Control Plane Endpoint"
  value       = module.eks.cluster_endpoint
}

output "oidc_provider_arn" {
  description = "IAM OIDC Provider ARN for configuring IRSA roles"
  value       = module.eks.oidc_provider_arn
}

output "configure_kubectl" {
  description = "Run this command to update local kubeconfig"
  value       = "aws eks update-kubeconfig --region ${var.aws_region} --name ${module.eks.cluster_name}"
}