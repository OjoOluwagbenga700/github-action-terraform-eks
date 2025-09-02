terraform {
  required_version = "~> 1.0"
  backend "s3" {
    bucket = "github-actions-bucket-007"
    key    = "gitops-actions/state.tfstate"
    region = "us-east-2"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.7"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.3"
    }
  }
}