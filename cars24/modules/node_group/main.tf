resource "aws_eks_node_group" "node_groups" {
  # for_each     = var.create_node_group ? var.node_groups : {}
  cluster_name = data.terraform_remote_state.cluster.outputs.name
  count = 3
  node_group_name = format("%d-nodeGroup", count.index + 1)  # Naming each node group uniquely
  node_role_arn   = data.terraform_remote_state.cluster.outputs.node_role_arn
  subnet_ids      = data.terraform_remote_state.network.outputs.private_sub_ids
  instance_types  = ["t2.medium"]
  disk_size       = "30"
  # labels          = each.value.labels
  # capacity_type   = each.value.capacity_type
  # force_update_version = var.force_update_version
  # ami_type       = each.value.ami_type

  scaling_config {
    desired_size = 3
    max_size     = 5
    min_size     = 2
  }

  lifecycle {
    create_before_destroy = true
    prevent_destroy       = false
    ignore_changes        = [scaling_config.0.desired_size]
  }

  remote_access {
    ec2_ssh_key               = "tool"
  }
}