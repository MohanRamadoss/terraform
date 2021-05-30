# Terraform Settings Block
terraform {
  # Terraform Version
  required_version = "~> 0.15.0"
  required_providers {
    # AWS Provider 
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
    
  }
}



# Provider Block
provider "aws" {
  region = "us-east-1"
  profile = "default" # Defining it for default profile is Optional
}