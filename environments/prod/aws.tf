# File to store aws secrets
provider "aws" {
  region                   = local.region
  shared_credentials_files = ["~/.aws/credentials"]
  profile                  = "default"
}
