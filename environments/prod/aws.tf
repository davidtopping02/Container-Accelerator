# File to store aws secrets
provider "aws" {
  region                   = local.region
}

# automatically gets aws_availability_zones as a list and is accessed in vpc.tf when setting azs value
data "aws_availability_zones" "available" {}
