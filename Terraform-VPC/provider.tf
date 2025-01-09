terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.10.0"
    }
  }
  backend "s3" {
    bucket = "terraform-remote-backend-s3-save2"
    key    = "dev/terraform.tfstate"
    region = "us-west-2"
  }
}


provider "aws" {
  # Configuration options
  region = "us-west-2"
}



