module "ecr" {
  source = "./modules/ecr"
  name   = "my-nodejs-app"
}

module "iam" {
  source     = "./modules/iam"
  role_name  = "github-actions-role"
  repo_name  = "your-user/your-repo"
}

module "eks" {
  source       = "./modules/eks"
  cluster_name = "devops-cluster"
  vpc_id       = "vpc-xxxx"
  subnet_ids   = ["subnet-1", "subnet-2"]
}