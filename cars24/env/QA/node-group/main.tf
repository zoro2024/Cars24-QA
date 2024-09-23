data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket = "cars242424"
    key    = "QA/network.tfstate"
    region = "ap-south-1"
  }
}

data "terraform_remote_state" "cluster" {
  backend = "s3"
  config = {
    bucket = "cars242424"
    key    = "QA/cluster.tfstate"
    region = "ap-south-1"
  }
}

module "nodegroup" {
  source         = "../../../modules/node_group"
  cluster_name = data.terraform_remote_state.cluster.outputs.name
  node_role_arn = data.terraform_remote_state.cluster.outputs.node_role_arn
  subnet_ids = [
    data.terraform_remote_state.network.outputs.private_sub_ids[0]
  ]
  labels    = var.labels
  ami_type  = var.ami_type
  instance_types = var.instance_types
  disk_size = var.disk_size
  desired_size = var.desired_size
  max_size = var.max_size
  min_size = var.min_size
  ec2_ssh_key = var.ec2_ssh_key
  security_group_ids  =  []
}