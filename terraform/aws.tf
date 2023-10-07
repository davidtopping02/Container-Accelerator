# Specify that aws will be used to host the cloud infrastructure
provider "aws" {
  region = var.region

  # Global tags to apply to all created resources
  default_tags {
    tags = {
      Environment    = var.environment
      Owner          = var.owner
      CostCentreCode = var.cost_centre_code
    }
  }
}

# Automatically gets aws_availability_zones as a list and is accessed in vpc.tf when setting azs value
data "aws_availability_zones" "available" {}
# Chose the first two clostest availability zones
locals {
  azs = slice(data.aws_availability_zones.available.names, 0, 2)
}
