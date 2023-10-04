# File to store aws secrets
provider "aws" {
  region = var.region

  default_tags {
    tags = {
      Environment = var.environment
      Owner = var.owner
      CostCentreCode = var.cost_centre_code
    }
  }
}

# automatically gets aws_availability_zones as a list and is accessed in vpc.tf when setting azs value
data "aws_availability_zones" "available" {}

locals {
  azs = slice(data.aws_availability_zones.available.names, 0, 2)
}
an invalid change
