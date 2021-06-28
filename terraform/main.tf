terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.47"
    }
  }

  required_version = ">= 1.0.1"
}

provider "aws" {}

module "IAM" {
  source = "./modules/IAM"
}

module "vpc" {
  source = "./modules/VPC"
}

module "ec2_instace" {
  source = "./modules/EC2"
  
  default_vpc = module.vpc.default_vpc_id
  public_subnet_id = module.vpc.subnet_public
}

module "dynamoDB" {
  source = "./modules/DynamoDB"
  
}

module "lambda_dynamo_user" {
  source = "./modules/Lambda"
  
  lambda_iam_role_arn = module.IAM.lambda_iam_role_arn
}