################
# Instance #
################
resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = var.ec2_public_key
}

resource "aws_instance" "backend" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  subnet_id                   = var.public_subnet_id
  key_name                    = aws_key_pair.deployer.name

  root_block_device {
    volume_size = 8
    volume_type = "gp2"
  }

  tags = {
    Name = "Backend-Server"
  }

}