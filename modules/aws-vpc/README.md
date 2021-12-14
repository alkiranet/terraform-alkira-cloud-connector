# Onboard AWS VPC

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_alkira"></a> [alkira](#requirement\_alkira) | >= 0.7.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.63 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_alkira"></a> [alkira](#provider\_alkira) | >= 0.7.0 |
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.63 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [alkira_connector_aws_vpc.connector](https://registry.terraform.io/providers/alkiranet/alkira/latest/docs/resources/connector_aws_vpc) | resource |
| [alkira_policy_prefix_list.prefix](https://registry.terraform.io/providers/alkiranet/alkira/latest/docs/data-sources/policy_prefix_list) | data source |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |
| [aws_subnet.filtered](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnet) | data source |
| [aws_subnet_ids.selected](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnet_ids) | data source |
| [aws_vpc.selected](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/vpc) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_id"></a> [account\_id](#input\_account\_id) | AWS account ID that owns or contains calling entity | `string` | `""` | no |
| <a name="input_aws_vpc"></a> [aws\_vpc](#input\_aws\_vpc) | Name of the AWS VPC to be onboarded; Also used for AWS Connector name | `string` | n/a | yes |
| <a name="input_billing_tag_id"></a> [billing\_tag\_id](#input\_billing\_tag\_id) | ID of Alkira billing tag applied to connector | `string` | n/a | yes |
| <a name="input_credential_id"></a> [credential\_id](#input\_credential\_id) | ID of Alkira credential used for AWS authentication | `string` | n/a | yes |
| <a name="input_custom_prefixes"></a> [custom\_prefixes](#input\_custom\_prefixes) | List of custom prefix-lists for routing (prefix-lists must already exist in Alkira CSX) | `list(string)` | `[]` | no |
| <a name="input_cxp"></a> [cxp](#input\_cxp) | Alkira CXP to create connector in | `string` | n/a | yes |
| <a name="input_group"></a> [group](#input\_group) | Name of Alkira group to add connector to | `string` | n/a | yes |
| <a name="input_is_custom"></a> [is\_custom](#input\_is\_custom) | Controls if custom prefixes are used for routing from cloud network to CXP; This value automatically changes to 'true' if custom\_prefixes list is set | `bool` | `false` | no |
| <a name="input_is_subnet"></a> [is\_subnet](#input\_is\_subnet) | Controls if subnet gets onboarded in lieu of entire cloud network; This value automatically changes to 'true' if onboard\_subnets list is set | `bool` | `false` | no |
| <a name="input_onboard_subnets"></a> [onboard\_subnets](#input\_onboard\_subnets) | List of subnet names to onboard in lieu of entire network | `list(string)` | `[]` | no |
| <a name="input_segment_id"></a> [segment\_id](#input\_segment\_id) | ID of Alkira segment to add connector to | `string` | n/a | yes |
| <a name="input_size"></a> [size](#input\_size) | Size of Alkira connector; SMALL, MEDIUM, LARGE | `string` | `"SMALL"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_billing_tag_id"></a> [billing\_tag\_id](#output\_billing\_tag\_id) | AWS Connector billing tag |
| <a name="output_connector_id"></a> [connector\_id](#output\_connector\_id) | AWS Connector ID |
| <a name="output_cxp"></a> [cxp](#output\_cxp) | AWS Connector CXP |
| <a name="output_group"></a> [group](#output\_group) | AWS Connector group |
| <a name="output_segment_id"></a> [segment\_id](#output\_segment\_id) | AWS Connector segment |
| <a name="output_size"></a> [size](#output\_size) | AWS Connector size |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->