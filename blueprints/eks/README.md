# EKS Cluster deployment with Import VPC state
This deployment imports VPC state file from S3 bucket and deploys EKS Cluster using the imported VPC ID and Subnet IDs.

<!--- BEGIN_TF_DOCS --->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.1.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_aws-eks-accelerator-for-terraform"></a> [aws-eks-accelerator-for-terraform](#module\_aws-eks-accelerator-for-terraform) | github.com/aws-samples/aws-eks-accelerator-for-terraform | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_eks_cluster.cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_cluster) | data source |
| [aws_eks_cluster_auth.cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_cluster_auth) | data source |
| [aws_subnets.private](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnets) | data source |
| [aws_subnets.public](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnets) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | Environment area, e.g. prod or preprod | `string` | n/a | yes |
| <a name="input_instance_types"></a> [instance\_types](#input\_instance\_types) | List of instance Types for the nodegroups | `list(string)` | n/a | yes |
| <a name="input_kubernetes_version"></a> [kubernetes\_version](#input\_kubernetes\_version) | Kubernetes Version | `string` | n/a | yes |
| <a name="input_node_group_name"></a> [node\_group\_name](#input\_node\_group\_name) | Name of the managed node group to create | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | AWS region | `string` | n/a | yes |
| <a name="input_tenant"></a> [tenant](#input\_tenant) | Account Name or unique account unique id e.g., apps or management or aws007 | `string` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC for the EKS Cluster | `string` | n/a | yes |
| <a name="input_zone"></a> [zone](#input\_zone) | zone, e.g. dev or qa or load or ops etc... | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws-eks-accelerator-for-terraform"></a> [aws-eks-accelerator-for-terraform](#output\_aws-eks-accelerator-for-terraform) | n/a |
<!--- END_TF_DOCS --->
