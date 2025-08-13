module "ecr" {
  source  = "terraform-aws-modules/ecr/aws"
  version = "2.0.0"

  repository_name = "devops-app"
  repository_image_tag_mutability = "MUTABLE"
  repository_image_scan_on_push = true

  tags = {
    Project = "DevOps EKS Project"
  }
}
