output "default_vpc_id" {
  value = data.aws_vpc.default.id
}

output "subnet_public" {
  value = data.aws_subnet.public.id
}