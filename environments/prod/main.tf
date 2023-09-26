# aws version information
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.18"
    }
  }
  
  terraform {
    backend "s3" {
      bucket         = "terraform-state-group9-container-accelerator"
      key            = "global/s3/terraform.tfstate"
      region         = "us-east-1"
      dynamodb_table = "terraform-state-locking"
    }
  }

  required_version = ">= 1.2.0"
}
