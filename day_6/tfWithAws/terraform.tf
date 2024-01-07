terraform {
  required_providers {
    local= {
        source = "hashicorp/local"
        version = "2.5.1"

    }

    aws = {
        source = "hashicorp/aws"
        version = "5.42.0"
    }
  }

  backend "s3" {
    bucket = "pcs-banking-tf-state"
    key = "finance/terraform.tfstate"
    region = "ca-central-1"
    dynamodb_table = "state-locking"
  }
}

provider "aws" {
  
}