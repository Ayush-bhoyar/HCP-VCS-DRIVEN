terraform {
  required_version = ">=1.12.2"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>6.0"
    }
  }

  cloud {

    organization = "Ayush-HCP"

    workspaces {
      name = "Ayush-CLI-HCP-DEMO"
    }
  }

}

provider "aws" {
  region = "us-east-1"
}