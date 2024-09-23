variable "instance_types" {
  description = "instance type"
  type        = list(string)
}

variable "disk_size" {
  description = "disk size of instance"
  type        = string
}

variable "desired_size" {
  description = "desired size of node group"
  type        = string
}

variable "labels" {
  description  =  "desired label of the node"
  type         =  map(string)
}

variable "ami_type" {
  description = "desired ami of node"
  type        = string
}

variable "max_size" {
  description = "max size of node group"
  type        = string
}

variable "min_size" {
  description = "min size of node group"
  type        = string
}

variable "ec2_ssh_key" {
  description = "ssh key for node group"
  type        = string
}