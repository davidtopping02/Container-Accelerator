<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.18 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | >= 2.6.0 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | ~> 2.23.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 4.18 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_eks"></a> [eks](#module\_eks) | terraform-aws-modules/eks/aws | 19.16.0 |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | terraform-aws-modules/vpc/aws | ~> 4.0 |

## Resources

| Name | Type |
|------|------|
| [aws_availability_zones.available](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_desired_size"></a> [desired\_size](#input\_desired\_size) | Desired capacity of single worker instance | `number` | `2` | no |
| <a name="input_eks_worker_instances"></a> [eks\_worker\_instances](#input\_eks\_worker\_instances) | Number of worker instances to create | `number` | `1` | no |
| <a name="input_eks_workers_on_demand"></a> [eks\_workers\_on\_demand](#input\_eks\_workers\_on\_demand) | set EKS worker capacity type to ON\_DEMAND, otherwise it will be set to SPOT | `bool` | `true` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | Instance Type | `string` | `"t3.medium"` | no |
| <a name="input_max_size"></a> [max\_size](#input\_max\_size) | Maximum capacity of single worker instance | `number` | `2` | no |
| <a name="input_min_size"></a> [min\_size](#input\_min\_size) | Minimum capacity of single worker instance | `number` | `1` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of Virtual Private Cloud | `string` | `"container-accelerator-vpc"` | no |
| <a name="input_region"></a> [region](#input\_region) | The name of the AWS Region | `string` | `"us-east-1"` | no |
| <a name="input_subnet_mask"></a> [subnet\_mask](#input\_subnet\_mask) | VPC CIDR range | `string` | `"172.20.0.0/16"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster_endpoint"></a> [cluster\_endpoint](#output\_cluster\_endpoint) | Endpoint for EKS control plane |
| <a name="output_cluster_name"></a> [cluster\_name](#output\_cluster\_name) | Kubernetes Cluster Name |
| <a name="output_cluster_security_group_id"></a> [cluster\_security\_group\_id](#output\_cluster\_security\_group\_id) | Security group ids attached to the cluster control plane |
| <a name="output_region"></a> [region](#output\_region) | AWS region |
<!-- END_TF_DOCS -->