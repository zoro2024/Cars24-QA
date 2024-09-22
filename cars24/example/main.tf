module "eks" {
  source = "../module/cluster"
  name       = "eks-cars24"
  vpc_id     = data.terraform_remote_state.network.outputs.vpc_id
  subnet_ids = flatten([data.terraform_remote_state.network.outputs.public_sub_ids, data.terraform_remote_state.network.outputs.private_sub_ids])

  enable_kubectl   = true
  enable_kube2iam  = true
  enable_dashboard = true
  enable_calico    = true

}
