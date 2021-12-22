variable "artifactbucket" {
  description = "artifact bucket names"
}

variable "source_repo_branch" {
    description = "Source repo branch"
    type = string
}

variable "source_repo_name" {
    description = "Source repo name"
    type = string
}
variable "aws_region" {
  description = "The AWS region to create things in."
  
}