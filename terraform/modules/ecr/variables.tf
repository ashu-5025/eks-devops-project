variable "name" {
    description = "name of the ECR repository"
    type        = string
}

variable "tags" {
    type = map(string)
    default = {}
}