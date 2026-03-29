terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.98.0"
    }
  }

  
    backend "s3" {
    bucket = "sivarobos-bucket"
    key    = "state-demo"
    region = "us-east-1"
    use_lockfile = true
  }
  
}

provider "aws" {
  # Configuration options
}