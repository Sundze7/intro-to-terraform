terraform {
  required_providers {
      local = {
        source = "hashicorp/local"
        version = "2.5.1"
      }

      random = {
        source  = "hashicorp/random"
        version = "3.6.0"
      }

      aws = {
        source  = "hashicorp/aws"
        version = "5.41.0"
      }
  }

}
  provider "local" {}
  provider "random" {}
  provider "aws" {
    region = "ca-central-1"
    profile = "NoK"
    # access_key = ""
    # secret_key = ""
  }