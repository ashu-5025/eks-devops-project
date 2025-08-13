module "ecr" {
  source  = "terraform-aws-modules/ecr/aws"
  version = "1.6.0"

  repository_name = "devops-app"
  repository_image_tag_mutability = "MUTABLE"
  repository_image_scan_on_push = true
  repository_lifecycle_policy = null
  create_lifecycle_policy = false


  tags = {
    Project = "DevOps EKS Project"
  }
}
