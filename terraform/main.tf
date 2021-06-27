terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.47"
    }
  }

  required_version = ">= 1.0.1"
}

provider "aws" {
  profile = "default"
  region  = "us-west-1"
}


module "ec2_instace" {
  source = "./modules/ec2"
}