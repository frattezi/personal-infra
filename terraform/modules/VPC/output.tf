output "default_vpc_id" {
  value = data.aws_vpc.default.id
}

output "subnet_public" {
  value = data.aws_subnet.public.id
}

output "alloow_outbound_tls_sg_id" {
  value = aws_security_group.allow_tls.id
}