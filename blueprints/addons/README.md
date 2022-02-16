<!--- BEGIN_TF_DOCS --->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_kubernetes-addons"></a> [kubernetes-addons](#module\_kubernetes-addons) | github.com/askulkarni2/aws-eks-accelerator-for-terraform//modules/kubernetes-addons | doc/extension-guide |

## Resources

| Name | Type |
|------|------|
| [aws_eks_cluster.cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_cluster) | data source |
| [aws_eks_cluster_auth.cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_cluster_auth) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_eks_cluster_id"></a> [eks\_cluster\_id](#input\_eks\_cluster\_id) | EKS Cluster Id | `string` | n/a | yes |
| <a name="input_worker_security_group_id"></a> [worker\_security\_group\_id](#input\_worker\_security\_group\_id) | Worker Security Group Id | `string` | n/a | yes |

## Outputs

No outputs.
<!--- END_TF_DOCS --->