# aws version information
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.18"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.23.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.6.0"
    }
  }

  backend "s3" {
    bucket         = "terraform-state-group9-container-accelerator"
    key            = "global/s3/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-locking"
  }

  required_version = ">= 1.2.0"
}

