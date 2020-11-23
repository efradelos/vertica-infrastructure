output "vpc_id" {
  description = "List of public subnet ids created withing VPC"
  value       = module.vpc.vpc_id
}

output "public_subnets" {
  description = "List of public subnet ids created withing VPC"
  value       = module.vpc.public_subnets
}

output "private_subnets" {
  description = "List of private subnet ids created withing VPC"
  value       = module.vpc.private_subnets
}
