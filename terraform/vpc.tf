# Virtual Private Cloud
module "vpc" {
  # Module version information
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 4.0"

  name = var.name

  # Subnet for vpc
  cidr = var.subnet_mask

  # Availability ZoneS
  azs = local.azs

  # Subnets
  private_subnets = [for k, v in local.azs : cidrsubnet(var.subnet_mask, 4, k)]
  public_subnets  = [for k, v in local.azs : cidrsubnet(var.subnet_mask, 8, k + 48)]
  intra_subnets   = [for k, v in local.azs : cidrsubnet(var.subnet_mask, 8, k + 52)]

  # Allow access to vpc through gateway
  enable_nat_gateway   = true
  single_nat_gateway   = true
  enable_dns_hostnames = true

  # Subnet tags
  public_subnet_tags = {
    "kubernetes.io/cluster/${var.name}" = "shared"
    "kubernetes.io/role/elb"            = 1
  }

  private_subnet_tags = {
    "kubernetes.io/cluster/${var.name}" = "shared"
    "kubernetes.io/role/internal-elb"   = 1
  }
}

