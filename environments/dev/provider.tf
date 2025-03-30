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
  # Configuration options
  region = var.main_region
}