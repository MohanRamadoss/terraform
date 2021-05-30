terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

terraform {
  required_version = "~> 0.14"
}

# Configure the AWS Provider
provider "aws" {
  region = var.region
}

