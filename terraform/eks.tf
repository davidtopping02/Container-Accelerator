# Elastic kubernetes module
module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.16.0"

  cluster_name = var.name

  subnet_ids               = module.vpc.private_subnets
  vpc_id                   = module.vpc.vpc_id
  control_plane_subnet_ids = module.vpc.intra_subnets

  cluster_endpoint_public_access  = true
  cluster_endpoint_private_access = true


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

  # EKS Managed Node Group(s)
  eks_managed_node_groups = {
    for i in range(1, var.eks_worker_instances + 1) : "wg-group-${i}" => {
      ami_type = "AL2_x86_64"

      min_size     = var.min_size
      max_size     = var.max_size
      desired_size = var.desired_size

      instance_types = [var.instance_type]
      capacity_type  = var.eks_workers_on_demand ? "ON_DEMAND" : "SPOT"


      attach_cluster_primary_security_group = true
      tags = {
        ExtraTag = "helloworld"
      }
    }
  }

  tags = {
    Example = var.name
  }
}
