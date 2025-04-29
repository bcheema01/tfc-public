terraform {
  cloud {
    organization = "k-is-a-moron"

    workspaces {
      name = "terraform-cloud"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "example" {
  bucket = "kisamoron123"

  tags = {
    Name        = "kisamoron123"
    Environment = "dev"
  }
}

