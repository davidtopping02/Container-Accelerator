# File to store aws secrets
provider "aws" {
  region                   = local.region
  shared_credentials_files = ["~/.aws/credentials"]
  profile                  = "default"
  alias = "some_provider"
}

# automatically gets aws_availability_zones as a list and is accessed in vpc.tf when setting azs value
data "aws_availability_zones" "available" {}