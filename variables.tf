variable "helm_config" {
  type        = any
  description = "Helm provider config for the kube-state-metrics"
  default     = {}
}

variable "manage_via_gitops" {
  type        = bool
  default     = false
  description = "Determines if the add-on should be managed via GitOps."
}

variable "irsa_permissions_boundary" {
  type = string
  default = ""
  description = "IAM Policy ARN for IRSA IAM role permissions boundary"
}

variable "irsa_policies" {
  type = list(string)
  default = []
  description = "IAM policy ARNs for Kube State Metrics IRSA"
}
