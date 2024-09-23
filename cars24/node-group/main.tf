module "nodegroup" {
  source         = "../modules/node_group"
#   cluster_name =  data.terraform_remote_state.cluster.outputs.name
#   vpc_subnet     = data.terraform_remote_state.network.outputs.private_sub_ids
#   node_group_name    = "1-node-group"
#   instance_type      = ["t2.medium"]
#   node_role_arn   = data.terraform_remote_state.cluster.outputs.node_role_arn
#   create_node_group  =  true
# #   tags               = local.tags_map
#   disk_size          = 30
#   scale_desired_size = 3
#   scale_max_size     = 4
#   scale_min_size     = 2
# #   ssh_key            = "default"
#   security_group_ids = data.terraform_remote_state.cluster.outputs.node_security_group
#   role_arn           = data.terraform_remote_state.cluster.outputs.node_role
}