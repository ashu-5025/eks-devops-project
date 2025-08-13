module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.21.0"

  cluster_name    = "devops-eks"
  cluster_version = "1.29"

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets

  eks_managed_node_groups = {
    default = {
      desired_capacity = 1
      min_capacity     = 1
      max_capacity     = 2

      instance_types = ["t3.medium"]
    }
  }

  tags = {
    Project = "DevOps EKS Project"
  }
}
