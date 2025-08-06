module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  version         = "20.8.4"
  cluster_name    = var.cluster_name
  cluster_version = "1.29"
  subnet_ids      = var.subnet_ids
  vpc_id          = var.vpc_id

  enable_irsa = true

  tags = var.tags
}

module "eks_node_group" {
  source  = "terraform-aws-modules/eks/aws//modules/eks-managed-node-group"
  version = "20.8.4"

  cluster_name    = module.eks.cluster_name
  cluster_version = module.eks.cluster_version
  subnet_ids      = module.eks.subnet_ids

  name = "default"
  desired_size = 2
  max_size     = 3
  min_size     = 1

  instance_types = ["t3.micro"]

  tags = var.tags
}