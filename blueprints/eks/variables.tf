variable "kubernetes_version" {
  type        = string
  description = "Kubernetes Version"
}

variable "region" {
  type        = string
  description = "AWS region"
}

variable "tenant" {
  type        = string
  description = "Account Name or unique account unique id e.g., apps or management or aws007"
}

variable "environment" {
  type        = string
  description = "Environment area, e.g. prod or preprod "
}

variable "zone" {
  type        = string
  description = "zone, e.g. dev or qa or load or ops etc..."
}

variable "vpc_id" {
  type        = string
  description = "VPC for the EKS Cluster"
}

variable "node_group_name" {
  type        = string
  description = "Name of the managed node group to create"
}

variable "instance_types" {
  type        = list(string)
  description = "List of instance Types for the nodegroups"
}
