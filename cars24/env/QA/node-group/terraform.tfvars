instance_types  =  ["c5.2xlarge"]
disk_size       = "100"
desired_size = 1
max_size     = 3
min_size     = 0
ec2_ssh_key  = "tool"
ami_type     =  "AL2_x86_64"
labels = {
    env = "QA"
}