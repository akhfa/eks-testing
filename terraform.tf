terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.47"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0"
    }

    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "~> 2.3"
    }
  }

  required_version = "~> 1.12.0"

  backend "s3" {
    bucket         = "test-mwaa-akhfa"
    key            = "terraform-state/testing.tfstate"
    region         = "ap-southeast-3"
  }
}