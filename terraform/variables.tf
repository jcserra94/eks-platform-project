variable "aws_region" {
  description = "AWS region for infrastructure deployment"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Deployment environment name"
  type        = string
  default     = "production"
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "production-eks-platform"
}

variable "vpc_cidr" {
  description = "Base CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}