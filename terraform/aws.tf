# File to store aws secrets
provider "aws" {
  region = var.region
}

# automatically gets aws_availability_zones as a list and is accessed in vpc.tf when setting azs value
data "aws_availability_zones" "available" {}

locals {
  azs = slice(data.aws_availability_zones.available.names, 0, 2)
}
