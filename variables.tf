variable "helm_config" {
  type        = any
  description = "Helm provider config for the kube-state-metrics"
  default     = {}
}

variable "eks_cluster_id" {
  type        = string
  description = "EKS cluster Id"
}

variable "manage_via_gitops" {
  type        = bool
  default     = false
  description = "Determines if the add-on should be managed via GitOps."
}

variable "tags" {
  type        = map(string)
  description = "Common Tags for AWS resources"
  default     = {}
}
