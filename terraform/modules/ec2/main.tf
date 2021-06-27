################
# Instance #
################

resource "aws_instance" "backend" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  
  root_block_device {
    volume_size = 8
    volume_type = "gp2"
  }
  
  tags =  {
      Name = "Backend-Server" 
  }

}