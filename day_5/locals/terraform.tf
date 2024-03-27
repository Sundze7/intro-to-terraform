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
}

provider "aws" {
  
}