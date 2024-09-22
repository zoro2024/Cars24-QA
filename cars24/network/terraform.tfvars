vpc_cidr_block          = "20.0.0.0/16"
instance_tenancy        = "default"
vpc_name                = "QA-VPC"
public_subnet_cidr      = ["20.0.10.0/24", "20.0.20.0/24", "20.0.21.0/24"]
public_sub_az           = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
map_public_ip_on_launch = true
public_subnet_name      = "QA-public"
public_subnet_tags = {
  Environment = "QA"
}
private_subnet_cidr = ["20.0.1.0/24", "20.0.2.0/24"]
private_sub_az      = ["ap-south-1a", "ap-south-1b"]
private_subnet_tags = [
  {
    name        = "QA-Cars24"
    environment = "QA"
  }
]
igw_name                = "QA-igw"
igw_environment         = "QA"
nat_gateway_name        = "QA-nat"
vpc_environment         = "QA"
nat_gateway_environment = "QA"
elasticip_environment   = "QA"
elasticip_name          = "QA-elasticip"
public_rt_tag = [
  {
    name        = "public-route-table"
    environment = "QA"
  }
]
private_rt_tag = [
  {
    name        = "private-route-table"
    environment = "QA"
  }
]
public_nacl_ingress_rules = [
  {
    protocol   = "-1"
    rule_no    = 90
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }
]
public_nacl_egress_rules = [
  {
    protocol   = "-1"
    rule_no    = 90
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }
]
public_nacl_tags = {
  name        = "QA-public-nacl"
  environment = "QA"
}
private_nacl_ingress_rules = [
  {
    protocol   = "-1"
    rule_no    = 90
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }
]
private_nacl_egress_rules = [
  {
    protocol   = "-1"
    rule_no    = 90
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  },
]
private_nacl_tags = {
  name        = "QA-private-nacl"
  environment = "QA"
}

