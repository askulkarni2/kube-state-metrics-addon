# Deployment Instructions

## Update Variables

```sh
cd vars
# Edit config.tfvars
cd ..
```

## Create VPC

```sh
cd vpc
terraform init -backend-config=vpc.tfbackend
terraform apply -auto-approve --var-file=../vars/config.tfvars
export TF_VAR_vpc_id=$(terraform output -json | jq -r '.vpc_id.value')
cd ..
```

## Create EKS Cluster

```sh
cd eks
terraform init -backend-config=eks.tfbackend
terraform apply -auto-approve --var-file=../vars/config.tfvars
export TF_VAR_eks_cluster_id=$(terraform output -json | jq -r '.["aws-eks-accelerator-for-terraform"].value.eks_cluster_id')
export CONFIGURE_KUBECTL=$(terraform output -json | jq -r '.["aws-eks-accelerator-for-terraform"].value.configure_kubectl')
cd ..
```

## Create Add-on

```sh
cd addons
terraform init -backend-config=addons.tfbackend
terraform apply -auto-approve --var-file=../vars/config.tfvars
cd ..
```

## Update KubeConfig

```sh
$(echo $CONFIGURE_KUBECTL)
```

## Get pods to verify addon is running

```sh
kubectl get pods -n kube-state-metrics
NAME                                  READY   STATUS    RESTARTS   AGE
kube-state-metrics-75547dd749-t2hbv   1/1     Running   0          20s
```
