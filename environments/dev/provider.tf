terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.93.0"
      aws_access_key = var.aws_access_key
      aws_secret_key = var.aws_secret_key
    }
  }

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = ""

    workspaces {
      name = ""
    }
  }
}

provider "aws" {
  # Configuration options
  region = var.main_region

}