# Virtual Private Cloud
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 4.0"

  name = var.name
  cidr = var.subnet_mask

  # Availability ZoneS
  azs = local.azs

  private_subnets = [for k, v in local.azs : cidrsubnet(var.subnet_mask, 4, k)]
  public_subnets  = [for k, v in local.azs : cidrsubnet(var.subnet_mask, 8, k + 48)]
  intra_subnets   = [for k, v in local.azs : cidrsubnet(var.subnet_mask, 8, k + 52)]

  enable_nat_gateway = true

  public_subnet_tags = {
    "kubernetes.io/role/elb" = 1
  }

  private_subnet_tags = {
    "kubernetes.io/role/internal-elb" = 1
  }
}
