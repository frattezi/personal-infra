################
# Instance AMI #
################

data "aws_ami" "ubuntu" {
  filter {
    name   = "image-id"
    values = ["ami-09e67e426f25ce0d7"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}