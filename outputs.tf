output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.cyber-vpc.id
}

output "vpc_cidr" {
  description = "VPC CIDR"
  value       = aws_vpc.cyber-vpc.cidr_block
}

output "pub_subnets" {
  description = "Subnet"
  value       = aws_subnet.pub-subnets.*.id
}

output "pub_subnets_cidr" {
  description = "Subnet"
  value       = aws_subnet.pub-subnets.*.cidr_block
}

output "sec_group_id" {
  description = "security group"
  value       = aws_security_group.ec2-secgroup.id
}