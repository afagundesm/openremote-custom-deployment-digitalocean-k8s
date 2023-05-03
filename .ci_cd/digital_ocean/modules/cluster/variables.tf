variable "project_name" {
  description = "The project name to use"
  type        = string
}

variable "description" {
  description = "Description for the DigitalOcean project"
  type        = string
}

variable "node_count" {
  description = "The number of nodes to provision for the cluster"
  type        = number
}

variable "cluster_name" {
  description = "The cluster name to use"
  type        = string
}

variable "environment" {
  description = "The environment name"
  type        = string
}
