# Elastic kubernetes module
module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.16.0"

  cluster_name                   = var.name
  cluster_endpoint_public_access = true

  cluster_addons = {
    coredns = {
      most_recent = true
    }
    kube-proxy = {
      most_recent = true
    }
    vpc-cni = {
      most_recent = true
    }
  }

  vpc_id                   = module.vpc.vpc_id
  subnet_ids               = module.vpc.private_subnets
  control_plane_subnet_ids = module.vpc.intra_subnets


  # EKS Managed Node Group(s)
  eks_managed_node_group_defaults = { # defaults if not overwrote by "cluster-wg"
    ami_type       = "AL2_x86_64"
    instance_types = ["m5.large"]

    attach_cluster_primary_security_group = true
  }

  eks_managed_node_groups = {
    cluster-wg = { # worker group, "cluster-wg" just a string
      min_size     = 1
      max_size     = 2
      desired_size = 1

      instance_types = [var.instance_type]
      capacity_type  = var.eks_worker_on_demand ? "ON_DEMAND" : "SPOT"

      tags = {
        ExtraTag = "helloworld"
      }
    }
  }

  tags = {
    Example = var.name
  }
}