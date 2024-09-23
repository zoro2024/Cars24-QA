output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.network-skeleton.vpc_id
}


output "public_sub_ids" {
  description = "public subnet ids"
  value       = module.network-skeleton.public_subnet_id
}

output "private_sub_ids" {
  description = "private subnet ids"
  value       = module.network-skeleton.private_subnet_id
}