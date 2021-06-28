#######
# VPC #
#######


data "aws_vpc" "default" {
  default = true
}

data "aws_subnet" "public" {
  id = var.subnet_id
}