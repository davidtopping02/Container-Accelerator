# Virtual Private Cloud

resource "aws_eip" "nat" {
  vpc = true
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 4.0"

  name = var.name
  cidr = var.subnet_mask

  # Availability ZoneS
  azs = local.azs

  # subnets
  private_subnets = [for k, v in local.azs : cidrsubnet(var.subnet_mask, 4, k)]
  public_subnets  = [for k, v in local.azs : cidrsubnet(var.subnet_mask, 8, k + 48)]
  intra_subnets   = [for k, v in local.azs : cidrsubnet(var.subnet_mask, 8, k + 52)]

  enable_nat_gateway   = true
  single_nat_gateway   = true
  enable_dns_hostnames = true
  external_nat_ip_ids  = aws_eip.nat.*.id

  public_subnet_tags = {
    "kubernetes.io/cluster/${var.name}" = "shared"
    "kubernetes.io/role/elb"            = 1

  }

  private_subnet_tags = {
    "kubernetes.io/cluster/${var.name}" = "shared"
    "kubernetes.io/role/internal-elb"   = 1
  }
}
