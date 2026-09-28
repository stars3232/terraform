terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.98.0"
    }
  }

  
    backend "s3" {
    bucket = "sivarobots-bucket"
    key    = "locals-demo"
    region = "us-east-1"
    use_lockfile = true
  }
  
}

provider "aws" {
  # Configuration options
}