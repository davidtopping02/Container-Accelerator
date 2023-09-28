<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.18 |

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
| <a name="input_country_to_region"></a> [country\_to\_region](#input\_country\_to\_region) | A map of countries to AWS regions | `map(string)` | <pre>{<br>  "Bahrain": "me-south-1",<br>  "California": "us-west-1",<br>  "Cape Town": "af-south-1",<br>  "Central": "ca-central-1",<br>  "Frankfurt": "eu-central-1",<br>  "Hong Kong": "ap-east-1",<br>  "Hyderabad": "ap-south-2",<br>  "Ireland": "eu-west-1",<br>  "Jakarta": "ap-southeast-3",<br>  "London": "eu-west-2",<br>  "Melbourne": "ap-southeast-4",<br>  "Milan": "eu-south-1",<br>  "Mumbai": "ap-south-1",<br>  "Ohio": "us-east-2",<br>  "Oregon": "us-west-2",<br>  "Osaka": "ap-northeast-3",<br>  "Paris": "eu-west-3",<br>  "Sao Paulo": "sa-east-1",<br>  "Seoul": "ap-northeast-2",<br>  "Singapore": "ap-southeast-1",<br>  "Spain": "eu-south-2",<br>  "Stockholm": "eu-north-1",<br>  "Sydney": "ap-southeast-2",<br>  "Tel Aviv": "il-central-1",<br>  "Tokyo": "ap-northeast-1",<br>  "UAE": "me-central-1",<br>  "Virginia": "us-east-1",<br>  "Zurich": "eu-central-2"<br>}</pre> | no |
| <a name="input_eks_worker_on_demand"></a> [eks\_worker\_on\_demand](#input\_eks\_worker\_on\_demand) | Set eks worker capacity type to ON\_DEMAND, otherwise it will be set to SPOT | `bool` | `true` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | Instance Type | `string` | `"t2.small"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of Virtual Private Cloud | `string` | `"container-accelerator-vpc"` | no |
| <a name="input_region_name"></a> [region\_name](#input\_region\_name) | The name of the AWS Region, region countries accepted, eg London, Ohio, Tokyo... | `string` | `"us-east-1"` | no |
| <a name="input_subnet_mask"></a> [subnet\_mask](#input\_subnet\_mask) | VPC CIDR range | `string` | `"10.0.0.0/16"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->