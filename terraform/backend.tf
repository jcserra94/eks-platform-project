terraform {
  backend "s3" {
    bucket         = "production-eks-platform-terraform-state-309046705535"
    key            = "eks/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "production-eks-platform-locks"
    encrypt        = true
  }
}