#######
# VPC #
#######


data "aws_vpc" "default" {
  default = true
}

data "aws_subnet" "public" {
  id = "subnet-5afc2105"
}