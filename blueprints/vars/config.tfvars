region             = "us-west-2"
vpc_cidr           = "10.1.0.0/16"
tenant             = "aws001"
environment        = "preprod"
zone               = "test"
instance_types     = ["m5.large"]
node_group_name    = "kube-state-demo-ng"
kubernetes_version = "1.21"