variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC."
  type        = string
}

variable "instance_tenancy" {
  description = "The tenancy option for the VPC."
  type        = string
}

variable "vpc_name" {
  description = "The name of the VPC."
  type        = string
}

variable "public_subnet_cidr" {
  description = "List of CIDR blocks for public subnets."
  type        = list(string)
}

variable "public_sub_az" {
  description = "List of availability zones for public subnets."
  type        = list(string)
}

variable "map_public_ip_on_launch" {
  description = "Whether to map public IPs on launch for public subnets."
  type        = bool
}

variable "public_subnet_name" {
  description = "Name for public subnets."
  type        = string
}

variable "public_subnet_tags" {
  description = "Tags to apply to public subnets."
  type        = map(string)
}

variable "private_subnet_cidr" {
  description = "List of CIDR blocks for private subnets."
  type        = list(string)
}

variable "private_sub_az" {
  description = "List of availability zones for private subnets."
  type        = list(string)
}

variable "private_subnet_tags" {
  description = "List of tags to apply to private subnets."
  type        = list(map(string))
}

variable "igw_name" {
  description = "Name of the internet gateway."
  type        = string
}

variable "igw_environment" {
  description = "Name of the internet gateway enironment."
  type        = string
}

variable "nat_gateway_name" {
  description = "Name of the nat gateway."
  type        = string
}

variable "vpc_environment" {
  description = "Name of the VPC env."
  type        = string
}

variable "nat_gateway_environment" {
  description = "Name of the nat gateway env."
  type        = string
}

variable "elasticip_environment" {
  description = "elasticip environment"
  type        = string
}


variable "elasticip_name" {
  description = "Name of the elastic IP."
  type        = string
}

variable "public_rt_tag" {
  description = "Tags for the public route table."
  type        = list(map(string))
}

variable "private_rt_tag" {
  description = "Tags for the private route table."
  type        = list(map(string))
}

variable "public_nacl_ingress_rules" {
  description = "Ingress rules for the public NACL."
  type = list(object({
    protocol   = string
    rule_no    = number
    action     = string
    cidr_block = string
    from_port  = number
    to_port    = number
  }))
}

variable "public_nacl_egress_rules" {
  description = "Egress rules for the public NACL."
  type = list(object({
    protocol   = string
    rule_no    = number
    action     = string
    cidr_block = string
    from_port  = number
    to_port    = number
  }))
}

variable "public_nacl_tags" {
  description = "Tags for the public NACL."
  type        = map(string)
}

variable "private_nacl_ingress_rules" {
  description = "Ingress rules for the frontend NACL."
  type = list(object({
    protocol   = string
    rule_no    = number
    action     = string
    cidr_block = string
    from_port  = number
    to_port    = number
  }))
}

variable "private_nacl_egress_rules" {
  description = "Egress rules for the frontend NACL."
  type = list(object({
    protocol   = string
    rule_no    = number
    action     = string
    cidr_block = string
    from_port  = number
    to_port    = number
  }))
}

variable "private_nacl_tags" {
  description = "Tags for the frontend NACL."
  type        = map(string)
}
