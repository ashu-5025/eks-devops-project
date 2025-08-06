terraform {
  required_version = ">= 1.3"

  backend "s3" {
    bucket         = "eks-devops-tf-state-bucket"         
    key            = "eks-infra/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "eks-devops-tf-locks"          
    encrypt        = true
  }
}