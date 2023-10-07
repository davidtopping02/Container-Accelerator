# Global terraform configuration
terraform {
  # Version constraints
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

  # Configure terraform to use a remote s3 backend to store the state
  backend "s3" {
    bucket         = "terraform-state-group9-container-accelerator" # unique identifier for bucket 
    key            = "global/s3/terraform.tfstate"                  # location of statefile within bucket
    region         = "us-east-1"                                    # data centre which bucket is located
    dynamodb_table = "terraform-state-locking"                      # enable state locking
  }

  # Constrains for terraform versions
  required_version = ">= 1.2.0"
}

