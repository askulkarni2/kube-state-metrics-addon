# kube-state-metrics-addon

This [EKS Blueprints](https://github.com/aws-samples/aws-eks-accelerator-for-terraform) add-on demonstrates how a partner or customer can extend the framework by creating their own Helm addon that gets provisioned by the EKS Blueprints framework. We use the [kube-state-metrics](https://github.com/prometheus-community/helm-charts/tree/main/charts/kube-state-metrics) to demonstrate the functionality.

For more details on how you can extend the framework please visit the [Extensibility Guide](https://github.com/aws-samples/aws-eks-accelerator-for-terraform/blob/doc/extension-guide/docs/extensibility.md).

<!--- BEGIN_TF_DOCS --->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_helm_addon"></a> [helm\_addon](#module\_helm\_addon) | github.com/aws-samples/aws-eks-accelerator-for-terraform//modules/kubernetes-addons/helm-addon | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_eks_cluster_id"></a> [eks\_cluster\_id](#input\_eks\_cluster\_id) | EKS cluster Id | `string` | n/a | yes |
| <a name="input_helm_config"></a> [helm\_config](#input\_helm\_config) | Helm provider config for the kube-state-metrics | `any` | `{}` | no |
| <a name="input_manage_via_gitops"></a> [manage\_via\_gitops](#input\_manage\_via\_gitops) | Determines if the add-on should be managed via GitOps. | `bool` | `false` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Common Tags for AWS resources | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_argocd_gitops_config"></a> [argocd\_gitops\_config](#output\_argocd\_gitops\_config) | Configuration used for managing the add-on with ArgoCD |
<!--- END_TF_DOCS --->