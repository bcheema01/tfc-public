terraform {
  cloud {
    organization = "k-is-a-moron"

    workspaces {
      name = "terraform-cloud"
    }

    required_providers {
        aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }

    required_version=">= 1.2.0"
  }
}
}