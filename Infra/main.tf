provider "aws" {
  region = var.aws_region
}

data "aws_availability_zones" "azs" {
  filter {
    name   = "opt-in-status"
    values = ["opt-in-not-required"]
  }
}

module "modules" {
  source             = "./modules"
  artifactbucket     = "workmotion-lambda"
  source_repo_name   = "workmotion"
  source_repo_branch = "master"
  aws_region                = "eu-west-1"
}