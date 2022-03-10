region             = "us-west-2"          #AWS Region
vpc_cidr           = "10.1.0.0/16"        #VPC CIDR
tenant             = "aws001"             #Tenant name, can be any string value
environment        = "preprod"            #Environment name, can be any string value
zone               = "test"               #Zone name, can be any string value
instance_types     = ["m5.large"]         #List of instance types to use for MNG
node_group_name    = "kube-state-demo-ng" #MNG name, can be any string value
kubernetes_version = "1.21"               #Kubernetes version
