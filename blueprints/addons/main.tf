module "kubernetes-addons" {
  source = "github.com/askulkarni2/aws-eks-accelerator-for-terraform//modules/kubernetes-addons?ref=doc%2Fextension-guide"

  eks_cluster_id               = var.eks_cluster_id
  eks_worker_security_group_id = var.worker_security_group_id

  # Add-ons
  enable_kube_state_metrics = true
}