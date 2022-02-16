#------------------------------------------
# EKS Cluster and Managed Node Group
#------------------------------------------
module "aws-eks-accelerator-for-terraform" {
  source = "github.com/aws-samples/aws-eks-accelerator-for-terraform"

  tenant      = var.tenant
  environment = var.environment
  zone        = var.zone

  # EKS Cluster VPC and Subnets
  vpc_id             = var.vpc_id
  public_subnet_ids  = data.aws_subnets.public.ids
  private_subnet_ids = data.aws_subnets.private.ids

  # EKS CONTROL PLANE VARIABLES
  create_eks         = true
  kubernetes_version = var.kubernetes_version

  # EKS MANAGED NODE GROUPS
  managed_node_groups = {
    mg_4 = {
      node_group_name = var.node_group_name
      instance_types  = var.instance_types
      subnet_ids      = data.aws_subnets.private.ids
    }
  }
}