variable "role_name" {
  type        = string
  description = "IAM role name for GitHub Actions"
}

variable "repo_name" {
  type        = string
  description = "GitHub repo format: user/repo"
}

variable "tags" {
  type    = map(string)
  default = {}
}
