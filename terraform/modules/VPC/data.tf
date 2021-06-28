#######
# VPC #
#######


data "aws_vpc" "default" {
  id = "vpc-085cb175"
}

data "aws_subnet" "public" {
    id = "subnet-5afc2105"
}