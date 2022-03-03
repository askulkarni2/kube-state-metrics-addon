####
# Add your custom resources here...
# such as IRSA policy statement
####

# Invokes the generic helm-addon module which is a convenience module
# EKS Blueprints framework provides to create helm based addons easily
module "helm_addon" {
  source            = "github.com/aws-samples/aws-eks-accelerator-for-terraform//modules/kubernetes-addons/helm-addon"
  manage_via_gitops = var.manage_via_gitops
  set_values        = local.set_values
  helm_config       = local.helm_config
  irsa_config       = local.irsa_config
  addon_context     = var.addon_context
}