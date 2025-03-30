terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.93.0"
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
  region = var.main_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}