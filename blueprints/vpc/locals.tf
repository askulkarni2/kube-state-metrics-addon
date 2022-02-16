locals {
  vpc_name       = join("-", [var.tenant, var.environment, var.zone, "vpc"])
  eks_cluster_id = join("-", [var.tenant, var.environment, var.zone, "eks"])
}
